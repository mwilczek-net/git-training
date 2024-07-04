#!/bin/bash

# This hook adds Ticket ID as as prefix to commit message
# Hook takes last part of branch name as Ticket ID
# branch: feature/ALA-123
# result: [ALA-123]
# branch: hotfix/annoying/bug/BUG-432
# result: [BUG-432]

# Apply this hook only for given branches
# Env variable overrides default setting
if [ -z "${PREPARE_COMMIT_MSG_TICKET_ID_BRANCHES}" ]; then
    PREPARE_COMMIT_MSG_TICKET_ID_BRANCHES=(feature hotfix bugfix)
fi

current_commit_message_file="${1}"

current_branch_name=$(git symbolic-ref --short HEAD)
current_branch_prefix="${current_branch_name%%/*}"
ticket_id="${current_branch_name##*/}"

current_branch_prefix_on_list=$(printf "%s\n" "${PREPARE_COMMIT_MSG_TICKET_ID_BRANCHES[@]}" | grep -c "^$current_branch_prefix$")
ticket_id_in_current_commit_message=$(grep -c "\[$ticket_id\]" $1)


if [ -n "$ticket_id" ] && [[ $current_branch_prefix_on_list -ne 0 ]] && [[ $ticket_id_in_current_commit_message -eq 0 ]]; then
  sed -i.bak -e "1s/^/[$ticket_id] /" "${current_commit_message_file}"
fi

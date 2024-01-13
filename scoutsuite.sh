#!/bin/bash
current_date=$(date +"%Y-%m-%d")
dir_path="/workspace2023/scoutsuite"
aws_account_number=$(aws sts get-caller-identity --profile scoutuser --output text --query 'Account')
profile="scoutuser"
[ -d "${dir_path}/scoutsuite-report" ] && mv "${dir_path}/scoutsuite-report" "${dir_path}/scoutsuite-report-${current_date}" && echo "Directory has been renamed to ${dir_path}/scoutsuite-report-${current_date}" || echo "scoutsuite-report not found"

cd /workspace2023/scoutsuite/
. bin/activate
scout aws --debug  --profile $profile

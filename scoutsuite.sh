#!/bin/bash
# Variables
current_date=$(date +"%Y-%m-%d")
dir_path="/workspace2023/scoutsuite"
#Extract AWS account number from AWS CLI
aws_account_number=$(aws sts get-caller-identity --profile scoutuser --output text --query 'Account')
profile="scoutuser"

# Rename existing scoutsuite-report

[ -d "${dir_path}/scoutsuite-report" ] && mv "${dir_path}/scoutsuite-report" "${dir_path}/scoutsuite-report-${current_date}" && echo "Directory has been renamed to ${dir_path}/scoutsuite-report-${current_date}" || echo "scoutsuite-report not found"


# Run the scout aws --debug command
#source bin/activate
cd /workspace2023/scoutsuite/
. bin/activate
scout aws --debug  --profile $profile

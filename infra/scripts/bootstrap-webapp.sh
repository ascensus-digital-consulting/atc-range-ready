#!/bin/bash

# Assume IAM role
assumeRoleResult=$(aws sts assume-role --role-arn 'arn:aws:iam::030460844096:role/ADC_WebInfraBootstrap' --role-session-name ADC_WebInfraBootstrap-Session)

# Make credentials available to CDK
export AWS_ACCESS_KEY_ID=$(echo "$assumeRoleResult" | jq -r '.Credentials.AccessKeyId')
export AWS_SECRET_ACCESS_KEY=$(echo "$assumeRoleResult" | jq -r '.Credentials.SecretAccessKey')
export AWS_SESSION_TOKEN=$(echo "$assumeRoleResult" | jq -r '.Credentials.SessionToken')

# Create IAM resources
cdk deploy --app ./infra/bin/ADCWebInfraBootstrap.js

#!/bin/bash -e

export DOCS_CONTEXT=lark

export RES_AWS_CREDS="sky"$DOCS_CONTEXT"_aws"
export RES_AWS_CREDS_UP=$(echo $RES_AWS_CREDS | awk '{print toupper($0)}')

export AWS_ACCESS_KEY=$(eval echo "$"$RES_AWS_CREDS_UP"_INTEGRATION_AWS_ACCESS_KEY_ID")
export AWS_SECRET_KEY=$(eval echo "$"$RES_AWS_CREDS_UP"_INTEGRATION_AWS_SECRET_ACCESS_KEY")

env

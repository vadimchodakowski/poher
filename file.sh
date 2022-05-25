#!/bin/bash

environment="$(echo -e "${1}")"

if [ "$environment" != "NON-PROD" ] && [ "$environment" != "PROD" ]; then
  echo "Must pass [NON-PROD|PROD] to script"
  exit 1
fi

if [ "NON-PROD" == "$environment" ]; then
  pwd
fi

if [ "PROD" == "$environment" ]; then
  ls -la
fi


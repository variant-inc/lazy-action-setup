#!/bin/bash

set -e

## Reference: https://github.com/GitTools/actions/
curl -sL https://raw.githubusercontent.com/GitTools/actions/main/dist/github/gitversion/execute/bundle.js -o ../_temp/gitversion-execute.js
node ../_temp/gitversion-execute.js
rm ../_temp/gitversion-execute.js

echo "::add-mask::$SONAR_TOKEN"
echo "SONAR_TOKEN=$SONAR_TOKEN" >> $GITHUB_ENV
echo "SONAR_ORG=$SONAR_ORG" >> $GITHUB_ENV
echo "AWS_ROLE_ARN=$AWS_WEB_IDENTITY_TOKEN_FILE" >> $GITHUB_ENV
echo "::add-mask::$AWS_WEB_IDENTITY_TOKEN_FILE"
echo "AWS_ROLE_ARN=$AWS_WEB_IDENTITY_TOKEN_FILE" >> $GITHUB_ENV

versionNumber="${GitVersion_NuGetVersion}.${GITHUB_RUN_NUMBER}"
Write-Host "Setting environment variable IMAGE_VERSION to: $versionNumber"
echo "IMAGE_VERSION=$versionNumber" >> ${env:GITHUB_ENV}
echo "::set-output name=image-version::$versionNumber"

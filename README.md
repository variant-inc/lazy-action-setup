# Lazy Action Setup

Sets environment variables that will be used by other Lazy Actions

## Environment Variables

Following environment variables are set by default in addition to `gitversion`

| Parameter                    | Description                                           |
| ---------------------------- | ----------------------------------------------------- |
| `SONAR_TOKEN`                | Sonar token.                                          |
| `SONAR_ORG`                  | Sonar organization.                                   |
| `AWS_ROLE_ARN`               | AWS role arn.                                         |
| `OCTOPUS_CLI_SERVER`         | octopus cli server.                                   |
| `OCTOPUS_CLI_API_KEY`        | octopus cli api key .                                 |

## Output Variables

Following output variables are set by default in addition to `gitversion`

| Parameter                    | Description                                           |
| ---------------------------- | ----------------------------------------------------- |
| `image_version`              | To fetch image version                                |

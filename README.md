# CI/CD

Contains terraform code for setting up [Github](https://github.com) repositories and [Buildkite](https://buildkite.com)
pipelines.

## Setup
Make sure you have the following environment variables set:
* `GITHUB_TOKEN`

For Github token (classic),enable the following scopes:
* `workflow`
* `read:packages`
* `admin:org`
* `delete:repo`
* `read:discussion`

## Running
Login to AWS (Goodfeed production) and then run `terraform plan`

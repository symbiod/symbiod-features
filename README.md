# give-me-poc-features
Cucumber/Watir features for give-me-poc project

* run rspec
* build app image
* run docker-compose at features


# Running features

## Quick local run

To run natively on dev machine:

* Go to `give-me-poc` project dir and run `RAILS_ENV=features rails server`
* Go to `give-me-poc-features` and run `cucumber`

To run features in headless mode(without real browser window) use:

`HEADLESS=true cucumber`

## Dockerized run

* Go to `give-me-poc` project dir and run `bin/build`
* Go to `give-me-poc` and run `bin/run`

*Keep in mind* that dockerized run may take longer, so it makes sense to use it for final run, before pushing branch.

[![Build Status](https://travis-ci.org/howtohireme/give-me-poc-features.svg?branch=master)](https://travis-ci.org/howtohireme/give-me-poc-features)

# give-me-poc-features
Cucumber/Watir features for give-me-poc project

* run rspec
* build app image
* run docker-compose at features


# Running features

## Quick local run

To run natively on dev machine:

1. Clone repository and go to `give-me-poc-features`

2. Create folder artifacts
`mkdir artifacts`

3. Configure the connection to the database `features/support/database.yml.sample`
`cp features/support/database.yml.sample features/support/database.yml`

4. `bundle`

5. Environment variables

6. [Install Chrome and chromedriver](https://gist.github.com/ziadoz/3e8ab7e944d02fe872c3454d17af31a5)

7. Go to `give-me-poc` project dir and run
`RAILS_ENV=features rake assets:precompile`
`RAILS_ENV=features rails server`

8. Go to `give-me-poc-features` and run `cucumber`

To run features in headless mode(without real browser window) use:

`HEADLESS=true cucumber`

## Dockerized run

* Go to `give-me-poc` project dir and run `bin/build`
* Go to `give-me-poc` and run `bin/run`

*Keep in mind* that dockerized run may take longer, so it makes sense to use it for final run, before pushing branch.

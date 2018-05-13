FROM nbulai/ruby-chromedriver:2.38
MAINTAINER Stanislav Mekhonoshin <opensource@howtohireme.ru>

WORKDIR /app
COPY ./ .

RUN apt-get update && apt-get -y install netcat

RUN bundle install

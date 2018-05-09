FROM mexx/ruby-chromedriver:2.5
MAINTAINER Stanislav Mekhonoshin <opensource@howtohireme.ru>

WORKDIR /app
COPY ./ .

RUN bundle install

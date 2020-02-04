FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y libpq-dev postgresql-client

WORKDIR /tmp
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle install

RUN mkdir /app
ADD . /app
WORKDIR /app

CMD ["./bin/start_server"]
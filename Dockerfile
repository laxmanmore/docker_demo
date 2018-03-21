FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /demoApp
WORKDIR /demoApp
COPY Gemfile /demoApp/Gemfile
COPY Gemfile.lock /demoApp/Gemfile.lock
RUN bundle install
COPY . /demoApp

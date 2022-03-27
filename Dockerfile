FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hello_app
WORKDIR /hello_app
COPY Gemfile /hello_app/Gemfile
COPY Gemfile.lock /hello_app/Gemfile.lock
RUN bundle install
COPY . /hello_app

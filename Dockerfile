FROM ruby:2.2.0

ENV LANG C.UTF-8

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
WORKDIR /usr/src/app
RUN bundle check || bundle install


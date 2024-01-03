FROM ruby:3.0-alpine

# throw errors if Gemfile has been modified since Gemfile.lock
#RUN bundle config --global frozen 1

RUN mkdir  /var/appbasic

COPY . .

WORKDIR /var/appbasic


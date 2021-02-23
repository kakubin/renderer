FROM ruby:2.7.2-alpine3.13
COPY . /app
CMD ruby app/server.rb

FROM ruby:2.4.0-alpine
RUN apk update
RUN apk add build-base libxml2-dev libxslt-dev
RUN gem update --system
RUN gem install bundler 
RUN gem install jekyll

WORKDIR /app

COPY ./ /app/
RUN bundle exec jekyll build
FROM ruby:2.1

RUN gem install bundler

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
COPY config.ru /app/config.ru

RUN bundle install

EXPOSE 9292

CMD bundle exec rackup -o 0.0.0.0

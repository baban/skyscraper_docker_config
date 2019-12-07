FROM node:10.5.0-alpine as node

FROM ruby:2.6.5-alpine3.10 as builder

RUN apk --update --no-cache add shadow sudo tzdata execline vim busybox-suid git imagemagick mariadb-connector-c-dev alpine-sdk \
  sqlite sqlite-dev postgresql postgresql-dev

RUN useradd rails -u 3333 -d /rails_app && \
    mkdir -p /rails_app && \
    chown rails.rails -R /rails_app

WORKDIR /rails_app

COPY --from=node /usr/local/bin/node /usr/local/bin/node
COPY --from=node /usr/local/include/node /usr/local/include/node
COPY --from=node /usr/local/lib/node_modules /usr/local/lib/node_modules
RUN ln -s /usr/local/bin/node /usr/local/bin/nodejs && \
    ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm

COPY publify/Gemfile /rails_app

COPY publify/Rakefile /rails_app/Rakefile
COPY publify/config.ru /rails_app/config.ru
COPY publify/config /rails_app/config
COPY publify/public /rails_app/public
COPY publify/bin /rails_app/bin
COPY publify/db /rails_app/db
COPY publify/publify_core /rails_app/publify_core
COPY publify/publify_textfilter_code /rails_app/publify_textfilter_code
COPY publify/publify_amazon_sidebar /rails_app/publify_amazon_sidebar
COPY docker/publify/database.yml.mysql /rails_app/config/database.yml

RUN bundle install --path vendor/bundle --binstubs .bundle -j4 --without development test

ARG RAILS_ENV
ENV RAILS_ENV $RAILS_ENV

COPY publify/app /rails_app/app
COPY publify/app/assets /rails_app/app/assets

COPY docker/publify/master.key /rails_app/config/
COPY docker/publify/credentials.yml.enc /rails_app/config/
COPY docker/publify/app/assets/config /rails_app/app/assets/config
ADD ./publify /rails_app/

RUN bundle exec rails assets:precompile RAILS_ENV=$RAILS_ENV

EXPOSE 3000

RUN ln -sfn /dev/stdout log/production.log && ln -sfn /dev/stdout log/staging.log
ENTRYPOINT RAILS_ENV=$RAILS_ENV bundle exec rails db:create db:migrate db:seed; RAILS_ENV=$RAILS_ENV bundle exec puma -C config/puma.rb
CMD bundle exec puma -C config/puma.rb

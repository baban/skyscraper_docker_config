<<<<<<< HEAD
FROM ruby:2.5.1

RUN apt-get update  -y -qq &&\
    apt-get install -y -qq vim-nox emacs-nox vim-nox less mysql-client redis-tools task-japanese locales sqlite3 golang

RUN echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
RUN update-locale LANG=ja_JP.UTF-8
ENV LANG ja_JP.utf8
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

EXPOSE 3000

RUN mkdir /node_root && cd /node_root
ENV NODEBREW_ROOT /node_root
ENV NODE_ENV production
ENV PATH $PATH:/node_root/current/bin
RUN wget -q git.io/nodebrew && chmod +x nodebrew && ./nodebrew setup
RUN /node_root/current/bin/nodebrew install-binary v10.5.0 &&\
    /node_root/current/bin/nodebrew use v10.5.0
RUN npm install -g yarn

RUN mkdir /rails_app && cd /rails_app
WORKDIR /rails_app

COPY publify/Gemfile /rails_app

ARG RAILS_ENV
ENV RAILS_ENV $RAILS_ENV

COPY publify/Rakefile /rails_app/Rakefile
COPY publify/config.ru /rails_app/config.ru
COPY publify/config /rails_app/config
COPY publify/config/master.key /rails_app/config/master.key
COPY publify/public /rails_app/public
COPY publify/bin /rails_app/bin
COPY publify/app /rails_app/app
COPY publify/db /rails_app/db
COPY publify/app/assets /rails_app/app/assets
COPY publify/publify_core /rails_app/publify_core
COPY publify/publify_textfilter_code /rails_app/publify_textfilter_code
COPY database.yml /rails_app/config/database.yml

RUN gem install bundler
RUN bundle install --path vendor/bundle
RUN bundle exec rails assets:precompile RAILS_ENV=$RAILS_ENV
COPY database.yml.mysql /rails_app/config/database.yml

ADD . /rails_app

RUN ln -sfn /dev/stdout log/production.log && ln -sfn /dev/stdout log/staging.log
ENTRYPOINT RAILS_ENV=$RAILS_ENV bundle exec rails db:create db:migrate db:seed; RAILS_ENV=$RAILS_ENV bundle exec puma -C config/puma.rb
CMD bundle exec puma -C config/puma.rb
=======
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

#FROM ruby:2.6.5-alpine3.10
#
#EXPOSE 3000
#
#RUN apk --update --no-cache add shadow sudo tzdata execline vim imagemagick mariadb-connector-c-dev alpine-sdk \
#  sqlite postgresql
#
#RUN useradd rails -u 3333 -d /rails_app && \
#    mkdir -p /rails_app && \
#    chown rails.rails -R /rails_app
#
#WORKDIR /rails_app
#
#COPY --from=builder /rails_app/vendor/bundle/ /rails_app/vendor/bundle/
#COPY --from=builder /usr/local/bundle /usr/local/bundle
#
#ADD publify /rails_app
#
#COPY --from=builder /rails_app/public/assets/ /rails_app/public/assets/
## COPY --from=builder /rails_app/public/packs/ /rails_app/public/packs/
#
#RUN chown rails.rails . * && \
#    mkdir -p log && \
#    chown rails.rails -R log && \
#    mkdir -p tmp/cache && \
#    chown rails.rails -R tmp/cache
#
#USER rails
#
#RUN ln -sfn /dev/stdout log/logstash_production.log && \
#    ln -sfn /dev/stderr log/logstash_staging.log && \
#    ln -sfn /dev/stderr log/production.log && \
#    ln -sfn /dev/stderr log/staging.log
#
#ENTRYPOINT RAILS_ENV=$RAILS_ENV bundle exec rails db:create db:migrate db:seed; RAILS_ENV=$RAILS_ENV bundle exec puma -C config/puma.rb
#CMD bundle exec puma -C config/puma.rb
#
>>>>>>> 3fd27a5... docker

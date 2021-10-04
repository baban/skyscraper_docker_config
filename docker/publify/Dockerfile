FROM ruby:2.6.5-alpine3.10

RUN apk --update --no-cache add shadow sudo tzdata execline vim busybox-suid git imagemagick mariadb-connector-c-dev alpine-sdk \
  sqlite sqlite-dev postgresql postgresql-dev nodejs npm

RUN apk add --update --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del --purge tzdata

RUN mkdir -p /rails_app

WORKDIR /rails_app

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

RUN bundle install --path vendor/bundle --binstubs .bundle -j4 --without development test --path vendor/bundle && \
    find vendor/bundle/ruby -path '*/gems/*/ext/*/Makefile' -exec dirname {} \; | xargs -n1 -P$(nproc) -I{} make -C {} clean

ARG RAILS_ENV
ENV RAILS_ENV $RAILS_ENV
ENV RAILS_SERVE_STATIC_FILES true

COPY publify/app /rails_app/app
COPY publify/app/assets /rails_app/app/assets

COPY docker/publify/master.key /rails_app/config/
COPY docker/publify/credentials.yml.enc /rails_app/config/
COPY docker/publify/app/assets/config /rails_app/app/assets/config
COPY docker/publify/config/application.rb /rails_app/config
COPY init/publify/app/mailers/application_mailer.rb /rails_app/app/mailers/

ADD ./publify /rails_app/

RUN bundle exec rails assets:precompile RAILS_ENV=$RAILS_ENV

EXPOSE 3000

RUN mkdir -p /rails_app/tmp/pids/
RUN ln -sfn /dev/stdout log/production.log && ln -sfn /dev/stdout log/staging.log
# ENTRYPOINT ping 0.0.0.0 
ENTRYPOINT RAILS_ENV=$RAILS_ENV bundle exec rails db:create db:migrate db:seed; RAILS_ENV=$RAILS_ENV bundle exec puma -C config/puma.rb
CMD RAILS_ENV=$RAILS_ENV bundle exec puma -C config/puma.rb

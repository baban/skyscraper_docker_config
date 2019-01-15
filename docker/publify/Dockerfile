FROM ruby:2.6.0

RUN apt-get update  -y -qq &&\
    apt-get install -y -qq vim-nox less mysql-client task-japanese locales sqlite3 \
                           build-essential default-libmysqlclient-dev

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

ARG RAILS_ENV
ENV RAILS_ENV $RAILS_ENV
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY publify/config.ru /rails_app/config.ru
COPY publify/Gemfile /rails_app
COPY publify/Rakefile /rails_app/Rakefile
COPY publify/app /rails_app/app
COPY publify/app/assets /rails_app/app/assets
COPY publify/bin /rails_app/bin
COPY publify/config /rails_app/config
COPY publify/db /rails_app/db
COPY publify/lib /rails_app/lib
COPY publify/public /rails_app/public
COPY publify/publify_amazon_sidebar /rails_app/publify_amazon_sidebar
COPY publify/publify_core /rails_app/publify_core
COPY publify/publify_textfilter_code /rails_app/publify_textfilter_code
COPY publify/themes /rails_app/themes
COPY ./init/publify/credentials.yml.enc /rails_app/config/credentials.yml.enc
COPY ./init/publify/master.key /rails_app/config/master.key
COPY ./init/publify/database.yml /rails_app/config/database.yml

RUN gem install bundler
RUN bundle install --path vendor/bundle
RUN bundle exec rails assets:precompile RAILS_ENV=$RAILS_ENV
COPY ./init/publify/database.yml.mysql /rails_app/config/database.yml

ADD publify /rails_app

ENTRYPOINT RAILS_ENV=$RAILS_ENV bundle exec rails db:create db:migrate db:seed; RAILS_ENV=$RAILS_ENV bundle exec puma -C config/puma.rb
CMD bundle exec puma -C config/puma.rb

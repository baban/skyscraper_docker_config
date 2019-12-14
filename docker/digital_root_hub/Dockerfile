FROM ruby:2.3.8

RUN apt-get update  -y -qq &&\
    apt-get install -y -qq vim-nox less mysql-client task-japanese locales sqlite3

RUN echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
RUN update-locale LANG=ja_JP.UTF-8
ENV LANG ja_JP.utf8
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

EXPOSE 3000

RUN mkdir /rails_app && cd /rails_app
WORKDIR /rails_app

COPY digital_root_hub/Gemfile /rails_app

ARG RAILS_ENV
ENV RAILS_ENV $RAILS_ENV

COPY digital_root_hub/Gemfile /rails_app/Gemfile
COPY digital_root_hub/Gemfile.lock /rails_app/Gemfile.lock
COPY digital_root_hub/Rakefile /rails_app/Rakefile
COPY digital_root_hub/config.ru /rails_app/config.ru
COPY digital_root_hub/app /rails_app/app
COPY digital_root_hub/config /rails_app/config
COPY digital_root_hub/db /rails_app/db
COPY digital_root_hub/lib /rails_app/lib
COPY digital_root_hub/public /rails_app/public
COPY digital_root_hub/script /rails_app/script
COPY digital_root_hub/vendor /rails_app/vendor
COPY digital_root_hub/app/assets /rails_app/app/assets

RUN gem install bundler --version 1.16.6
RUN bundle install --full-index
# RUN RAILS_ENV=$RAILS_ENV bundle exec rake db:create db:migrate db:seed
# RUN bundle exec rake assets:precompile RAILS_ENV=$RAILS_ENV
COPY init/digital_root_hub/database.yml /rails_app/config/database.yml

ADD digital_root_hub /rails_app

ENTRYPOINT ping 0.0.0.0
CMD ping 0.0.0.0
#ENTRYPOINT RAILS_ENV=$RAILS_ENV bundle exec rake db:create db:migrate; bundle exec rails s -e $RAILS_ENV
#CMD bundle exec rails s -e $RAILS_ENV

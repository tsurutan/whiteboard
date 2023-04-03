FROM ruby:2.4.10
COPY . ./whiteboard
WORKDIR ./whiteboard
RUN apt-get install libxslt-dev libxml2-dev gcc libc-dev make
RUN gem uninstall bundler
# RUN gem install bundler --version=1.3.0
RUN gem update --system 1.8.25
#RUN bundle install
#ENV RAILS_ENV production
#RUN bundle exec rake assets:precompile
#CMD bundle exec unicorn -p 3000 -c ./config/unicorn.rb
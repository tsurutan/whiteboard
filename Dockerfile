FROM ruby:2.6.10
COPY . ./whiteboard
WORKDIR ./whiteboard
RUN apt-get install libxslt-dev libxml2-dev gcc libc-dev make
RUN gem uninstall bundler
RUN gem update --system 1.8.25
RUN bundle install
ENV RAILS_ENV production
RUN bundle exec rake assets:precompile
CMD bundle exec unicorn -p 3000 -c ./config/unicorn.rb
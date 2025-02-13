FROM ruby:2.0.0-p647
COPY . ./whiteboard
WORKDIR ./whiteboard
RUN gem uninstall bundler
RUN gem install bundler --version=1.1
RUN gem update --system 1.8.25
RUN bundle install
ENV RAILS_ENV production
RUN bundle exec rake assets:precompile
CMD bundle exec unicorn -p 3000 -c ./config/unicorn.rb
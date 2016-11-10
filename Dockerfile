FROM ruby:1.9.3

RUN apt-get update -qq && apt-get install -y build-essential libxml2-dev libxslt1-dev locales && dpkg-reconfigure -f noninteractive locales
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && echo "en_US.UTF-8 UTF-8" > /etc/default/locale && locale-gen
ENV APP_HOME /teracyBlog
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

# --- Add this to your Dockerfile ---
ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle \
  LANG=en_US.UTF-8 \
  LANGUAGE=en_US.UTF-8 \
  LC_ALL=en_US.UTF-8

RUN bundle install

ADD . $APP_HOME

RUN rake generate

WORKDIR $APP_HOME/public

CMD ruby -run -ehttpd . -p${PORT:-80}

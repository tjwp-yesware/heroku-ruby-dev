FROM heroku/cedar:14

COPY ./bin/heroku-ruby-dev.sh /tmp/build.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /tmp/build.sh

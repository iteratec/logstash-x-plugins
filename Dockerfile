FROM docker.elastic.co/logstash/logstash:7.9.1
LABEL maintainer="nils.kuhn@iteratec.com"

ARG LOGSTASH_HOME=/usr/share/logstash

# Not yet merged: https://github.com/logstash-plugins/logstash-output-mongodb/pull/74
COPY plugin-gems/logstash-output-mongodb-3.2.0.gem $LOGSTASH_HOME/logstash-output-mongodb.gem
RUN $LOGSTASH_HOME/bin/logstash-plugin install $LOGSTASH_HOME/logstash-output-mongodb.gem
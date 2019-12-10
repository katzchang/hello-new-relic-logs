FROM fluent/fluentd:v1.7-debian-2

USER root

RUN fluent-gem install fluent-plugin-newrelic

USER fluent

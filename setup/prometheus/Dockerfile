FROM prom/prometheus:v2.3.2
MAINTAINER mrneodiablo

RUN mkdir /etc/prometheus/config/rules -p

COPY prometheus.yml /etc/prometheus/config/prometheus.yml
COPY rules  /etc/prometheus/config/rules

EXPOSE  9090

ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "--config.file=/etc/prometheus/config/prometheus.yml", \
             "--storage.tsdb.path=/prometheus", \
             "--web.console.libraries=/etc/prometheus/console_libraries", \
             "--web.console.templates=/etc/prometheus/consoles" ]
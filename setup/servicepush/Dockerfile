FROM guyton/centos6:latest

MAINTAINER mrneodiablo

RUN mkdir /service

COPY service.json /service/service.json
COPY pushgateway.json /service/pushgateway.json
COPY node.json /service/node.json
COPY container.json /service/container.json


COPY servicepus.sh /service/servicepus.sh
RUN chmod +x /service/servicepus.sh

ENTRYPOINT [ "./service/servicepus.sh" ]

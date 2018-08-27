#!/bin/bash

sleep 20

curl --header "Content-Type: application/json" -d "`cat /service/service.json`" -X PUT http://consul:8500/v1/agent/service/register

curl --header "Content-Type: application/json" -d "`cat /service/container.json`" -X PUT http://consul:8500/v1/agent/service/register

curl --header "Content-Type: application/json" -d "`cat /service/node.json`" -X PUT http://consul:8500/v1/agent/service/register

curl --header "Content-Type: application/json" -d "`cat /service/pushgateway.json`" -X PUT http://consul:8500/v1/agent/service/register

while true;
do
echo "monitor_http `shuf -i 1-300 -n 1`" | curl -X PUT --data-binary @- http://pushgateway:9091/metrics/job/monitor_http/instance/pushgateway

sleep 30
done

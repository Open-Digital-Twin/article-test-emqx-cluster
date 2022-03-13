#!/bin/bash
docker service scale test_mqtt-cluster=1 test_etcd=1
sleep 5
test_twin-A=1 test_twin-B=1
sleep 5
docker service scale test_clients-A=1 
CONTADOR=0
while [  $CONTADOR -lt 5 ]; 
do
      echo "$CONTADOR";
      let CONTADOR=CONTADOR+1; 
      sleep 1
done
test_clients-B=1
#!/bin/bash
docker service scale test_mqtt-cluster=2 test_etcd=1
sleep 5
docker service scale test_twin-A=1 test_twin-B=1
sleep 5
docker service scale test_clients-A=1 
CONTADOR=0
while [  $CONTADOR -lt 500 ]; 
do
      echo "$CONTADOR";
      let CONTADOR=CONTADOR+1; 
      sleep 1
done
docker service scale test_clients-B=1

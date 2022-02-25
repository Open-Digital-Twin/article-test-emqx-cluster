#!/bin/bash
docker service scale test_mqtt-cluster=1 test_etcd=1
sleep 5
docker service scale test_twin-A=1 test_twin-B=1
sleep 5
docker service scale test_clients-A=1 
i = 1
while [$i -le 500] do
echo $i
i=$(( i+5 ))
done
test_clients-B=1

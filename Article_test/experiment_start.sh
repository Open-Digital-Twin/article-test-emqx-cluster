docker service scale test_mqtt-cluster=1 test_etcd=1
sleep 5
docker service scale test_mqtt-manager=1 test_twin-A=1 test_twin-B=1 test_twin-D=1 test_twin-C=1 test_twin-E=1 test_twin-F=1
sleep 5
docker service scale test_clients-A=1 test_clients-G=1 test_clients-B=1 test_clients-C=1 test_clients-D=1 test_clients-E=1 test_clients-F=1
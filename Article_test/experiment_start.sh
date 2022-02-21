docker service scale test_mqtt-cluster=1 test_etcd=1
sleep 5
docker service scale test_mqtt-manager=1 test_twin-V2X=1 test_twin-Cam=1 test_twin-DAB=1 test_twin-DAS=1 test_twin-MC=1
sleep 5
docker service scale test_clients-V2X=1 test_clients-Cam=1 test_clients-DAB=1 test_clients-DAS=1 test_clients-MC=1
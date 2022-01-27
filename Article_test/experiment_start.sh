docker service scale test_mqtt-cluster=1 test_etcd=1
sleep 5
docker service scale test_mqtt-manager=1 test_twin-A=1 test_twin-B=1
sleep 5
docker service scale test_clients-A=1
for i in 100; do
echo sleplt i * 5
sleep 5
done
docker service scale test_clients-B=1

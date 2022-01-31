docker service scale test_mqtt-cluster=1 test_etcd=1
sleep 5
docker service scale test_mqtt-manager=1 test_twin-A=1 test_twin-B=1 test_twin-D=1 test_twin-C=1 test_twin-E=1 test_twin-F=1 test_twin-G=1 test_twin-H=1
sleep 5
docker service scale test_clients-A=1
for i in 100; do
echo sleplt i * 5
sleep 5
done
docker service scale test_clients-B=1
for i in 100; do
echo sleplt i * 5
sleep 5
done
docker service scale test_clients-C=1
for i in 100; do
echo sleplt i * 5
sleep 5
done
docker service scale test_clients-D=1
for i in 100; do
echo sleplt i * 5
sleep 5
done
docker service scale test_clients-E=1
for i in 100; do
echo sleplt i * 5
sleep 5
done
docker service scale test_clients-F=1
for i in 100; do
echo sleplt i * 5
sleep 5
done
docker service scale test_clients-G=1
for i in 100; do
echo sleplt i * 5
sleep 5
done
docker service scale test_clients-H=1
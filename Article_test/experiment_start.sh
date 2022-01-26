docker service scale test_client-A=1
sleep 500
docker service scale test_client-B=1

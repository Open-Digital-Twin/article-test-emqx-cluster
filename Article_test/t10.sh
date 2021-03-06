#!/bin/bash
j=0
while [ $j -le 10 ] 
do 
docker stack deploy test --compose-file docker-compose.yml
sleep 20

docker service scale test_mqtt-cluster=1 test_etcd=1
sleep 5
docker service scale test_mqtt-manager=1 test_twin-V2X=1 test_twin-Cam=1 test_twin-DAB=1 test_twin-DAS=1 test_twin-MC=1
sleep 5
docker service scale test_clients-V2X=1 test_clients-Cam=1 test_clients-DAB=1 test_clients-DAS=1 test_clients-MC=1
i=0
while [ $i -le 2200 ] 
do
echo $i
sleep 1
i=$(( $i+1 ))
done

cd test8i
mkdir "teste${j}"
cd "teste${j}"
docker container ls --format {{.Names}} | grep manager| xargs -I {} sh -c 'docker logs {} -t --details 2>&1 | tee {}.log'
docker -H dtwins-w04 container ls --format {{.Names}} | grep twin| xargs -I {} sh -c 'docker -H dtwins-w04 logs {} -t --details 2>&1 | tee {}.log'
docker -H dtwins-w05 container ls --format {{.Names}} | grep twin| xargs -I {} sh -c 'docker -H dtwins-w05 logs {} -t --details 2>&1 | tee {}.log'
docker -H dtwins-w06 container ls --format {{.Names}} | grep twin| xargs -I {} sh -c 'docker -H dtwins-w06 logs {} -t --details 2>&1 | tee {}.log'
docker -H dtwins-w07 container ls --format {{.Names}} | grep twin| xargs -I {} sh -c 'docker -H dtwins-w07 logs {} -t --details 2>&1 | tee {}.log'
docker -H dtwins-w08 container ls --format {{.Names}} | grep twin| xargs -I {} sh -c 'docker -H dtwins-w08 logs {} -t --details 2>&1 | tee {}.log'
cd ..
cd ..

docker stack rm test
sleep 20
j=$(( $j+1 ))
done

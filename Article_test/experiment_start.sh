docker service scale test_mqtt-cluster=1 test_etcd=1
sleep 5
docker service scale test_mqtt-manager=1 test_twin-A=1 test_twin-B=1 test_twin-D=1 test_twin-C=1 test_twin-E=1 test_twin-F=1 test_twin-G=1 test_twin-H=1
sleep 5
docker service scale test_clients-A=1
i=0
while [ $i -ne 500 ]
do
        i=$(($i+1))
        echo "$i, Client A"
        sleep 1
done
docker service scale test_clients-B=1
i=0
while [ $i -ne 500 ]
do
        i=$(($i+1))
        echo "$i, Client A, B"
        sleep 1
done
docker service scale test_clients-C=1
i=0
while [ $i -ne 500 ]
do
        i=$(($i+1))
        echo "$i, Client A B C"
        sleep 1
done
docker service scale test_clients-D=1
i=0
while [ $i -ne 500 ]
do
        i=$(($i+1))
        echo "$i, Client A B C D"
        sleep 1
done
docker service scale test_clients-E=1
i=0
while [ $i -ne 500 ]
do
        i=$(($i+1))
        echo "$i, Client A B C D E"
        sleep 1
done
docker service scale test_clients-F=1
i=0
while [ $i -ne 500 ]
do
        i=$(($i+1))
        echo "$i, Client A B C D E F"
        sleep 1
done
docker service scale test_clients-G=1
i=0
while [ $i -ne 500 ]
do
        i=$(($i+1))
        echo "$i, Client A B C D E F G"
        sleep 1
done
docker service scale test_clients-H=1
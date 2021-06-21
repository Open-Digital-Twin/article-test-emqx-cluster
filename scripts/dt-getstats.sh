for c in $(seq 1 5)
do
   date +"%T.%N" >> "stats.log"
   docker stats --no-stream >> "stats.log"
   sleep 5
done

for i in "$*"
do
   docker restart $i
done

while :; do
   
   date +"%T.%N" >> "stats.log"
   docker stats --no-stream >> "stats.log"
   sleep 5
done
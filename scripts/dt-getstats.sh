REC=0
for REC in $(seq 0 10) 
do
date +"%T.%N" >> "stats.log"
echo "saving n $REC at"; date +"%T.%N"
docker stats --no-stream >> "stats.log" & 
let REC=REC+1
sleep 4
done

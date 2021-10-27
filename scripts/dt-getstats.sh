REC=0
while :; do
date +"%T.%N" >> "stats.log"
echo "saving n $REC at"; date +"%T.%N"
docker stats --no-stream >> "stats.log" & 
let REC=REC+1
sleep 5
done

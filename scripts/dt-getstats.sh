while :; do

   date +"%T.%N" >> "stats.log"
   docker stats --no-stream >> "stats.log"
   sleep 5

done
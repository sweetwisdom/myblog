set -e

time=$(date)
starttime=`date +'%Y-%m-%d %H:%M:%S'`
echo $time
sleep 3.5s 
endtime=`date +'%Y-%m-%d %H:%M:%S'`
start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo "本次运行时间： "$((end_seconds-start_seconds))"s"


#  bash 03.sh
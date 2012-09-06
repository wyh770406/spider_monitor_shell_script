
#!/bin/bash -v
while :
do
    echo "Press [CTRL+C] to stop.."
    sleep 3
								
	#判断进程是否存在，如果不存在就启动它如果存在就重启它
	PIDS=`ps -ef |grep run_download_file |grep -v grep | awk '{print $2}'`
	echo $PIDS
	if [ "$PIDS" != "" ]; then
	  echo "process $PIDS is already running" 
	else
	  
	  cd spider
	  ./script/run_download_file -sxkb -n100000
	  #运行进程
	fi
done

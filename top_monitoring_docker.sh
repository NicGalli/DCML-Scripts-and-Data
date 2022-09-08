#!/bin/bash
echo 'time,load_average_1min,load_average_5min,load_average_15min,total_tasks,running_tasks,sleeping_tasks,stopped_tasks,zombie_tasks,cpu_user,cpu_system,cpu_nice,cpu_idle,cpu_wait,cpu_hi,cpu_si,cpu_st,memory_total,memory_free,memory_used,memory_buff,vm_total,vm_free,vm_used,memory_available'\
> top_monitoring6.csv
while :
do
  source top_parsing_docker.sh
  sleep 1
done

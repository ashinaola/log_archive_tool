#!/bin/bash


log_dir="/var/log/"
current_date=$(date +%Y%m%d)
current_time=$(date +%H%M)

# get input from command
dir=$1

# build the relative path
log_dir+=$dir

# compress logs from the input dir
tar -czf logs_archive_${current_date}_${current_time}.tar.gz ${log_dir}

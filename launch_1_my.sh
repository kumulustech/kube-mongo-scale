#!/bin/bash

echo "Launcing test"
date +"%Y-%m-%d-%H-%M" > start-time.txt
ssh sql-minion-3 "rm iostat*"
scp iostat_capture.sh sql-minion-3:

screen -dmS mysql_db_test -c screen_rc_for_my_1

#!/bin/bash
current_time=$(date "+%Y-%m-%d-%H-%M-%S")
cd /mnt/Daten/ALBIS/Db
xargs --arg-file=/opt/cgm-albis-dbase2pgsql/config/database-list.txt cp -v --target-directory=/opt/cgm-albis-dbase2pgsql/db > /opt/cgm-albis-dbase2pgsql/log/copy-$current_time.log 2>&1 &

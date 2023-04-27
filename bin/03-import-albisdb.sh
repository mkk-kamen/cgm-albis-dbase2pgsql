#!/bin/bash
current_time=$(date "+%Y-%m-%d-%H-%M-%S")
cd /opt/cgm-albis-dbase2pgsql/db
for file in *.dbf ;
do
  echo "### BEGIN ${file%.dbf} ###" >> /opt/cgm-albis-dbase2pgsql/log/import-$current_time.log 
  if test -f "/opt/cgm-albis-dbase2pgsql/db/${file%.dbf}.dbt"; then
	su postgres -c "pgdbf -u -e -N -m /opt/cgm-albis-dbase2pgsql/db/${file%.dbf}.dbt /opt/cgm-albis-dbase2pgsql/db/${file%.dbf}.dbf | iconv -c -f latin1 -t UTF-8 | psql albis" >> /opt/cgm-albis-dbase2pgsql/log/import-$current_time.log    
  else
	su postgres -c "pgdbf -u -e -N /opt/cgm-albis-dbase2pgsql/db/${file%.dbf}.dbf | iconv -c -f latin1 -t UTF-8 | psql albis" >> /opt/cgm-albis-dbase2pgsql/log/import-$current_time.log    
  fi
  echo "### END ${file%.dbf} ###" >> /opt/cgm-albis-dbase2pgsql/log/import-$current_time.log 
done;

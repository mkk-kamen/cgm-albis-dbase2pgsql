#!/bin/bash
cd /opt/cgm-albis-dbase2pgsql/db
for file in * ; do            # or *.jpg, or x*.jpg, or whatever
   basename=$(tr '[:lower:]' '[:upper:]' <<< "${file%.*}")
   newname="$basename.${file#*.}"
   mv "$file" "$newname" >/dev/null 2>&1
done

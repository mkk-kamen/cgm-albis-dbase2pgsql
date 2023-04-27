#!/bin/bash
su postgres -c "psql albis < /opt/cgm-albis-dbase2pgsql/scripts/create-index.sql"

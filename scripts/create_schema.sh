#!/bin/bash
# $1 host
# $2 dbname
# $3 user
# $4 pass

echo "Creating schema on database and dropping existing one WARNING, press any key to continue" 
echo "Will sleep for 10 seconds , that's the only chance you have to cancel this"
sleep 10
echo "drop database $2" | mysql -u$3 -p$4 -h $1
echo "create database $2" | mysql -u$3 -p$4 -h $1
ls -la ../sql/*.gz | awk {'printf $9 " "'} | xargs -I {} sh -c "zcat {} | mysql -u$3 -p$4 -h $1 $2"
ls -la ../sql/*.sql | awk {'printf $9 " "'} | xargs -I {} sh -c "cat {} | mysql -u$3 -p$4 -h $1 $2"


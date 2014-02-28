#!/bin/bash
server="localhost"
port="3306"
user="user"
pass="password"
db="world"
updatepath="..\updates"

echo "REMINDER: Updates aren't required for a fresh DB import!"

	max=`ls -1 "${updatepath}"/*.sql | wc -l`
	i=0
for table in "${updatepath}"/*.sql; do
	i=$((${i}+1))
	echo " [${i}/${max}] import: ${table##*/}"
	mysql -h ${server} --user=${user} --port=${port} --password=${pass} ${db} < "${table}"
done

echo
read -p "Import finished. Press any key to continue..."
echo
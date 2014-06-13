#This tool is using on internal host
#Author Lei Tu
#Mail   alex.lei.tu@gmail.com
#
#!/bin/bash


uuid=`docker ps | awk 'NR >1 {print $1, $(NF-1)}' | sed -e 's/0\.0\.0\.0\://g' -e 's/\/tcp//g' -e 's/->/\t/g'`

echo -e "uuid\t     host_port\tguest_port"
echo -e "$uuid"

echo $host_port
#ssh -p $host_port root@$host

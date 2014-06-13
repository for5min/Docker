#This tool is using on internal host
#Author Lei Tu
#Mail   alex.lei.tu@gmail.com
#
#!/bin/bash
docker_ssh (){
  ssh root@$(docker inspect $1 | grep IPAddr | sed -e 's/.*: "\(.*\)".*/\1/')
}

docker ps | awk 'NR > 1 { print NR-1,$1,$2}'

echo -e "\n"
echo "which server you would like to ssh to"
read NUMBERA

NUMBER=`expr $NUMBERA + 1`

UUID=`docker ps | awk -v number=$NUMBER 'NR == number {print $1}'`

docker_ssh $UUID

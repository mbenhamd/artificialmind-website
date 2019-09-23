#!/bin/sh

# Local - Blog directory
local_directory="/home/mbenhamd/Project/artificialmind-website/"

# Remote - SFTP hostname, username, password, directory
hostname="sftp.sd6.gpaas.net"

username="2066918"
password="Jlxvmhpa314"
remote_directory="/vhosts/default/htdocs"

# execute only if directory exists
if [ -d "$local_directory" ]; then
  # kill existing jekyll process
  pkill jekyll
 
  # wait for a while
  sleep 5

  # build site 
  LC_ALL=C.UTF-8 jekyll build --lsi

  # upload website
  # cd "${local_directory}/_site" && 
  lftp -u ${username},${password} -e "mirror -R -p -P=10 -e --ignore-time -v ${local_directory}/_site/ ${remote_directory};quit" sftp://${hostname}
fi

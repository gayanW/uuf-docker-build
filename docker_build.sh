#!/bin/bash
set -x

path_to_built_distribution=/home/gayan/Desktop/carbon-uuf-1.0.0-m14/product/target/wso2uuf-1.0.0-m14.zip
zip_name=wso2uuf-1.0.0-m14
docker_repo_name_tag=gayanw/<name>:<tag>

rm -r wso2uuf-1.*
cp $path_to_built_distribution .
unzip $zip_name.zip
cp netty-transports.yml $zip_name/conf/transports/netty-transports.yml 
docker build -t $docker_repo_name_tag .
docker push $docker_repo_name_tag
set +x

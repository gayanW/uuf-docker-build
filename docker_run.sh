#!/bin/bash
docker_repo_name_tag=gayanw/<name>:1.3
docker run -it --net=host $docker_repo_name_tag /bin/bash


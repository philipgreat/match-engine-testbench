#!/bin/bash

#gradle bootJar
#
#rsync -e "ssh -p 20000" target/deploy/tanker-filling-0.0.1-SNAPSHOT.jar liquid@app.doublechaintech.com:~
#
#
#
#ssh -p 20000 liquid@app.doublechaintech.com bash restart.sh
#ssh ubuntu@nexus.teaql.io "mkdir ~/workspace/voe-backend-service"
rsync -avz  --delete --exclude={.git,.idea,.gradle,log_service.db,voe-backend-service.log,target,build}  ./ ubuntu@nexus.teaql.io:~/workspace/voe-backend-service/
ssh ubuntu@nexus.teaql.io "cd ~/workspace/voe-backend-service && bash run-remote.sh "


echo $GITHUB_ACTOR
echo $GITHUB_TOKEN
# export ORG=doublechaintech
# export GITHUB_REPOSITORY=dc-pkg-services
ORG=doublechaintech  GITHUB_REPOSITORY=dc-pkg-services ../dc-pkg-services/scripts/generateModel.sh models

scp -P 6543 ../dc-pkg-services/build/*.xml  philip@t420.doublechaintech.cn:~/resin-3.1.16/webapps/sky/modeling/microservice/


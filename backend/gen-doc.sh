echo $GITHUB_ACTOR
echo $GITHUB_TOKEN
# export ORG=doublechaintech
# export GITHUB_REPOSITORY=dc-pkg-services
ORG=doublechaintech  GITHUB_REPOSITORY=dc-pkg-services ../../dc-pkg-services/scripts/generateDoc.sh models

scp -P 6543 ../../dc-pkg-services/build/*.html $PWD
scp -P 6543 ../../dc-pkg-services/build/*.MD $PWD

 
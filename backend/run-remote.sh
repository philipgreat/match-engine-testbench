#source ~/.bashrc

export JAVA_HOME=/home/ubuntu/.sdkman/candidates/java/current
export GRADLE_HOME=/home/ubuntu/.sdkman/candidates/gradle/current
export SDKMAN_CANDIDATES_DIR=/home/ubuntu/.sdkman/candidates
export PATH=/home/ubuntu/.local/bin:/home/ubuntu/.bun/bin:/home/ubuntu/.cargo/bin:/home/ubuntu/.nvm/versions/node/v16.20.2/bin:/home/ubuntu/.sdkman/candidates/quarkus/current/bin:/home/ubuntu/.sdkman/candidates/java/current/bin:/home/ubuntu/.sdkman/candidates/gradle/current/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
cd ~/workspace/voe-backend-service
gradle wrapper
./gradlew bootJar
#1954982 ./target/deploy/health-data-0.0.1-SNAPSHOT.jar
jps -l |grep './target/deploy/voe-backend-service-0.0.1-SNAPSHOT.jar' | awk '{print "kill -9 " $1}' |bash
nohup java -jar ./target/deploy/voe-backend-service-0.0.1-SNAPSHOT.jar &

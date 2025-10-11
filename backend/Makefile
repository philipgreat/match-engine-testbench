all: 
	bash update-version.sh
clean:
	rm -rf lib .tmp
run:
	gradle bootRun
publish:
	gradle bootJar
	rsync -avz -e "ssh -p 6543" sql/*.sql philip@t420.doublechaintech.cn:/data/upload/testbench-service/
	rsync -avz -e "ssh -p 6543" target/deploy/voe-backend-service-0.0.1-SNAPSHOT.jar philip@t420.doublechaintech.cn:/data/upload/testbench-service/

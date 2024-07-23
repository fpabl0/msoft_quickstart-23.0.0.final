
# Run this first:
# 	export JAVA_HOME=/Users/pablofuentes/Desktop/fpabl0_git/software_master/02-arch_design/extra_bins/amazon-corretto-17.jdk/Contents/Home
build-mvn-app:
	/Users/pablofuentes/Desktop/fpabl0_git/software_master/02-arch_design/extra_bins/apache-maven-3.9.8/bin/mvn clean package -DskipTests

build-myapp-image:
	docker build -t myapp .

# after running it, open
#  localhost:8080/kitchensink-angularjs -> hits app server directly
#  localhost:3000/kitchensink-angularjs -> it goes through api layer (proxy)
run:
	docker compose up -d
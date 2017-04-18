default:
	@echo $(PWD)

jenkins:
	docker run \
	--rm \
	--network=jenkins-blue-ocean \
	--publish 8080:8080 \
	--publish 4040:4040 \
	--volume /var/run/docker.sock:/var/run/docker.sock \
	--volume $(PWD)/jenkins_home:/var/jenkins_home \
	logimethods/blueocean:1.0.1

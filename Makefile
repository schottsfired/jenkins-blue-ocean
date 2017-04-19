default:
	@echo $(PWD)

network:
	docker network create jenkins-blue-ocean

jenkins:
	docker run \
	--name=jenkins-blue-ocean \
	--rm \
	--network=jenkins-blue-ocean \
	--publish 8080:8080 \
	--volume $(PWD)/jenkins_home:/var/jenkins_home \
	jenkinsci/blueocean:1.0.1

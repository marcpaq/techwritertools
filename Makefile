.PHONY: help

TAG=egopontem/techwritertools
PLATFORMS=linux/amd64,linux/arm64

build:
	docker build --tag $(TAG) --platform $(PLATFORMS) source

push:
	docker push $(TAG)

help:
	@echo "build          Build the container"
	@echo "push           Push the container to hub.docker.com"

.PHONY: help

TAG=egopontem/techwriter
PLATFORMS=linux/amd64,linux/arm64


build:
	docker build --no-cache --tag $(TAG) --platform $(PLATFORMS) source

push:
	docker push $(TAG)

help:
	@echo "build          Build the container"
	@echo "push           Push the container to hub.docker.com"

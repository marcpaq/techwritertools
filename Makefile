.PHONY: help clean

TAG = egopontem/techwritertools
PLATFORMS = linux/amd64,linux/arm64
SRC = source/Dockerfile source/dotbash_profile source/dotbashrc
WELCOME = source/welcome.txt
VERSION := $(shell sh version.sh)

test:
	@echo $(VERSION)

build:
	echo $(VERSION)
	mkdir -p build
	cp $(SRC) build
	sed -e 's/%VERSION%/'"$(VERSION)"'/g' < "$(WELCOME)" > build/welcome.txt
#	docker build --tag $(TAG) --platform $(PLATFORMS) build

push:	build
	docker push $(TAG)

clean:
	rm -rf build

help:
	@echo "build          Build the container"
	@echo "push           Push the container to hub.docker.com"


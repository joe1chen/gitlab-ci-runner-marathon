.PHONY: build push

DOCKER_REPO ?= joe1chen/gitlab-ci-runner-marathon
DOCKER_TAG ?= 1.0.2

build:
	docker build -t $(DOCKER_REPO):$(DOCKER_TAG) .

push:
	docker push $(DOCKER_REPO):$(DOCKER_TAG)
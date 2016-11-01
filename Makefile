.PHONY: build push

DOCKER_REPO ?= joe1chen/gitlab-ci-runner-marathon
DOCKER_TAG ?= dind-1.0.1

build:
	docker build -t $(DOCKER_REPO):$(DOCKER_TAG) .

push:
	docker push $(DOCKER_REPO):$(DOCKER_TAG)
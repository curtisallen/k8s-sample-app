VERSION=0.0.2
PROJECT_NAME=k8s-sample-app
CONTAINER=curtisallen/$(PROJECT_NAME):$(VERSION)

build-push: build push

build:
	docker build . \
		-t $(CONTAINER)

push:
	docker push $(CONTAINER)

.PHONY: build push build-push

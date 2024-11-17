build:
	$(eval GIT_REV=$(shell git rev-parse HEAD | cut -c1-7))
	docker build -t europe-west3-docker.pkg.dev/stodola-planovac/raclavskycz/raclavskycz:$(GIT_REV) .
push:
	$(eval GIT_REV=$(shell git rev-parse HEAD | cut -c1-7))
	docker push europe-west3-docker.pkg.dev/stodola-planovac/raclavskycz/raclavskycz:$(GIT_REV)

build-kustomize:
	$(eval GIT_REV=$(shell git rev-parse HEAD | cut -c1-7))
	cd ops/kubernetes && kustomize edit set image europe-west3-docker.pkg.dev/stodola-planovac/raclavskycz/raclavskycz=europe-west3-docker.pkg.dev/stodola-planovac/raclavskycz/raclavskycz:$(GIT_REV)
	kustomize build ops/kubernetes --load-restrictor LoadRestrictionsNone > ops/kubernetes/stack.yml

apply:
	kubectl apply -f ops/kubernetes/stack.yml
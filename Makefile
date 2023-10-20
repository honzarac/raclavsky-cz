build:
	$(eval GIT_REV=$(shell git rev-parse HEAD | cut -c1-7))
	docker build -t voxfpd/raclavsky-cz:$(GIT_REV) .
push:
	$(eval GIT_REV=$(shell git rev-parse HEAD | cut -c1-7))
	docker push voxfpd/raclavsky-cz:$(GIT_REV)

build-kustomize:
	$(eval GIT_REV=$(shell git rev-parse HEAD | cut -c1-7))
	cd ops/kubernetes && kustomize edit set image voxfpd/raclavsky-cz=voxfpd/raclavsky-cz:$(GIT_REV)
	kustomize build ops/kubernetes --load-restrictor LoadRestrictionsNone > ops/kubernetes/stack.yml

apply:
	kubectl apply -f ops/kubernetes/stack.yml
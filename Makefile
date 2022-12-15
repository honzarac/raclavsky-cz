build:
	$(eval GIT_REV=$(shell git rev-parse HEAD | cut -c1-7))
	npm run build && docker build -t voxfpd/raclavsky-cz:$(GIT_REV) .
push:
	$(eval GIT_REV=$(shell git rev-parse HEAD | cut -c1-7))
	docker push voxfpd/raclavsky-cz:$(GIT_REV)

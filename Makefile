build:
	npm run build && docker build -t voxfpd/raclavsky-cz:1.0.0 .
push:
	docker push voxfpd/raclavsky-cz:1.0.0

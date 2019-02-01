SITE=justatheory.com
BUCKET=${SITE}
BUILD_DIR=public
CLOUDFRONT_DISTID=E1X44SJ45FTNGI

.DEFAULT_GOAL := build

build:
	hugo

deploy:
	cd public && git clean -dfx && git rm -rf --ignore-unmatch .
	hugo
	cd public; \
	git add . ; \
	git commit -m "rebuilding site `date -u +%Y-%m-%dT%H:%M:%SZ`"; \
	git push origin master

server:
	hugo server -D --bind 0.0.0.0

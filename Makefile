BUILD_DIR=public
.DEFAULT_GOAL := build
VERSION ?= 0.9999

build:
	cd public && git clean -dfx && git rm -rf --ignore-unmatch .
	bin/gendocs $(VERSION)
	hugo

deploy: build
	cd public; \
	git add . ; \
	git commit -m "rebuilding site `date -u +%Y-%m-%dT%H:%M:%SZ`"; \
	git push origin master

server:
	hugo server -D --bind 0.0.0.0

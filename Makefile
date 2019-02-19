BUILD_DIR=public
.DEFAULT_GOAL := build

docs:
	git submodule update --init --remote -- sqitch
	bin/gendocs

build: docs
	git submodule update --init -- public
	cd public && git clean -dfx && git rm -rf --ignore-unmatch .
	hugo

deploy: build
	cd public; \
	git add . ; \
	git commit -m "rebuilding site `date -u +%Y-%m-%dT%H:%M:%SZ`"; \
	git push origin master

server:
	hugo server -D --bind 0.0.0.0

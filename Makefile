BUILD_DIR=public
.DEFAULT_GOAL := build

manual:
	git submodule update --init --remote -- sqitch
	rm -f content/docs/manual/sqitch*
	bin/gen_manual

build: manual
	git submodule update --init -- public
	cd public && git clean -dfx && git rm -rf --ignore-unmatch . && git reset HEAD -- README.md CNAME && git checkout README.md CNAME
	hugo

deploy: build
	cd public; \
	git add . ; \
	git commit -m "rebuilding site `date -u +%Y-%m-%dT%H:%M:%SZ`"; \
	git push origin master

server: manual
	hugo server -D --bind 0.0.0.0

# Requires imagemagick
favicon:
	convert -background transparent static/img/icon-48.png -define icon:auto-resize=16,24,32,48 static/favicon.ico

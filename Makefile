.DEFAULT_GOAL := server
SQITCH_SOURCE ?= ../sqitch
PUBLISH_DIR ?= ../sqitchers.github.io

content/docs/manual/sqitch:
	bin/gen_manual "${SQITCH_SOURCE}"

server: content/docs/manual/sqitch
	hugo server -D --bind 0.0.0.0

publish: build
	cd "${PUBLISH_DIR}" && git clean -dfx && git rm -rf --ignore-unmatch . && git reset HEAD -- README.md CNAME && git checkout README.md CNAME
	hugo -d "${PUBLISH_DIR}"
	cd "${PUBLISH_DIR}"; \
	git add . ; \
	git commit -m "Rebuilding site `date -u +%Y-%m-%dT%H:%M:%SZ`"; \
	git push

# Requires imagemagick
favicon:
	convert -background transparent static/img/icon-48.png -define icon:auto-resize=16,24,32,48 static/favicon.ico

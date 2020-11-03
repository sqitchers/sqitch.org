.DEFAULT_GOAL := server
SQITCH_SOURCE ?= ../sqitch
PUBLISH_DIR ?= ../sqitchers.github.io

content/docs/manual/sqitch*:
	bin/gen_manual "${SQITCH_SOURCE}"

server: content/docs/manual/sqitch*
	hugo server -D --bind 0.0.0.0

build: content/docs/manual/sqitch*
	hugo -d "${PUBLISH_DIR}"

# Requires imagemagick
favicon:
	convert -background transparent static/img/icon-48.png -define icon:auto-resize=16,24,32,48 static/favicon.ico

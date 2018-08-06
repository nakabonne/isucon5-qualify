MAKEFLAGS = --no-builtin-rules --no-builtin-variables --always-make
.DEFAULT_GOAL := help

SHELL  = /usr/bin/env bash

bench:
	sudo sh bench/files/bench.sh webapp/scripts/testsets/testsets.json

restart:
	sh scripts/restart.sh

alp:
	sudo alp -r --sum -f $(file)

rotate:
	sh scripts/rotate_alplog.sh

build:
	cd webapp/go/ && GOPATH=`pwd` go build -o app

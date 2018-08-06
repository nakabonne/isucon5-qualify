MAKEFLAGS = --no-builtin-rules --no-builtin-variables --always-make
.DEFAULT_GOAL := help

SHELL  = /usr/bin/env bash

bench:
	sh bench/files/bench.sh

restart:
	sh scripts/restart.sh

alp:
	sudo alp -r --sum -f $(file) --aggregates '/history/\d+,/channel/\d+,/profile/\w+,/icons/\S+'

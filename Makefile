MAKEFLAGS = --no-builtin-rules --no-builtin-variables --always-make
.DEFAULT_GOAL := help

SHELL  = /usr/bin/env bash

bench:
	sh bench/files/bench.sh

restart:
	sh scripts/restart.sh

# The old school Makefile, following are required targets. The Makefile is written
# to allow building multiple binaries. You are free to add more targets or change
# existing implementations, as long as the semantics are preserved.
#
#   make              - default to 'build' target
#   make test         - run unit test
#   make build        - build local binary targets
#   make clean        - clean up targets
#
# The makefile is also responsible to populate project version information.

#
# Tweak the variables based on your project.
#

SHELL := /bin/bash
NOW_SHORT := $(shell date +%Y%m%d%H%M)

# Git commit sha.
COMMIT := $(strip $(shell git rev-parse --short HEAD 2>/dev/null))
COMMIT := $(COMMIT)$(shell [[ -z $$(git status -s) ]] || echo '-dirty')
COMMIT := $(if $(COMMIT),$(COMMIT),"Unknown")

# Current version of the project.
MAJOR_VERSION = 1
MINOR_VERSION = 0
PATCH_VERSION = 0
BUILD_VERSION = $(COMMIT)
GO_MOD_VERSION = $(shell cat go.mod | sha256sum | cut -c-6)
VERSION ?= v$(MAJOR_VERSION).$(MINOR_VERSION).$(PATCH_VERSION)-$(BUILD_VERSION)

#
# Define all targets. At least the following commands are required:
#

.PHONY: lint test build clean

all: lint test build

download: 
	cat $(dict) | ggrep -v -P "\t" | sponge $(dict)
	wget 'https://pinyin.sogou.com/d/dict/download_cell.php?id=$(id)&name=$(name)'
	python $(ASCEL_BIN) $(name).scel >> $(dict)
	rm $(name).scel
	version=$(TODAY_DOT); gsed -i -E "s/^version: \".+\"$$/version: \"$$version\"/g" $(dict)

download-wangluoliuxingxinci: id = 4
download-wangluoliuxingxinci: dict = luna_pinyin.wangluoliuxingxinci.dict.yaml
download-wangluoliuxingxinci: name = 网络流行新词【官方推荐】
download-wangluoliuxingxinci: download


download-kaifadashenzhuanyongciku: id = 75228
download-kaifadashenzhuanyongciku: dict = luna_pinyin.kaifadashenzhuanyongciku.dict.yaml
download-kaifadashenzhuanyongciku: name = 开发大神专用词库【官方推荐】
download-kaifadashenzhuanyongciku: download

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
TODAY_DOT := $(shell date +%Y.%m.%d)

ASCEL_BIN = ${HOME}/dev/myproject/ascel/ascel.py

#
# Define all targets. At least the following commands are required:
#

.PHONY: download

download: 
	cat $(dict) | ggrep -v -P "\t" | sponge $(dict)
	wget 'https://pinyin.sogou.com/d/dict/download_cell.php?id=$(id)&name=$(name)'
	python $(ASCEL_BIN) $(name).scel >> $(dict)
	rm $(name).scel
	version=$(TODAY_DOT); gsed -i -E "s/^version: \".+\"$$/version: \"$$version\"/g" $(dict)

id = 4
dict = luna_pinyin.wangluoliuxingxinci.dict.yaml
name = 网络流行新词【官方推荐】
download-wangluoliuxingxinci: download


id = 75228
dict = luna_pinyin.kaifadashenzhuanyongciku.dict.yaml
name = 开发大神专用词库【官方推荐】
download-kaifadashenzhuanyongciku: download

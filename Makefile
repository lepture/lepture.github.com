# Author: Hsiaoming Yang <lepture@me.com>
# Website: http://lab.lepture.com

.PHONY: build-doc publish clean server

THEME = $(HOME)/.spm/themes/one

build-doc:
	@nico build -C nico.json -v --theme=$(THEME)

server:
	@nico server -C nico.json -q --theme=$(THEME) --watch

publish: clean build-doc
	@ghp-import _site

clean:
	@rm -fr _site

all: remote

local:
	LC_ALL="en_GB.UTF-8" ikiwiki --setup ikiwiki.setup

remote: local
	rsync -aP ~/public_html/wiki/ jak-linux.org:html/

.PHONY: local remote

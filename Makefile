all: remote

local:
	LC_ALL="en_GB.UTF-8" ikiwiki --setup ikiwiki.setup

remote: local
	rsync -aP /home/jak/public_html/wiki/ diphda.uberspace.de:html/

.PHONY: local remote

all: remote

local:
	hugo

remote: local
	rsync -aP public/ jak-linux.org:html/

.PHONY: local remote

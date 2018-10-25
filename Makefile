all: remote

local:
	hugo

remote: local
	rsync -aP  --exclude ".well-known" --exclude "fdroid" --exclude "cm" --delete --checksum public/ jak-linux.org:html/

.PHONY: local remote

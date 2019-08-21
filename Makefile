all: remote

local:
	hugo

remote: local
	rsync -aP  --exclude ".well-known" --exclude "fdroid" --exclude "cm" --delete --checksum public/ jak-linux.org:/var/www/jak-linux.org/

.PHONY: local remote

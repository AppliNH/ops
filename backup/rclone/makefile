# test backup

BIN=$(PWD)/bin/backup

# Google drive test. Everyone has a Google Drive :)
# 1. Get a Google Application Client ID
# Proj: gedw99-rclone-backup-test

# I think we can embed this into our CLI and Server. lets see.

print:

build:
	go build -o $(BIN) .

run:
	go run .

config:
	$(BIN) config file
	code /Users/apple/.config/rclone/rclone.conf

init:
	# will walk your through 
	# its a good way for our users too.
	$(BIN) config

gui:
	$(BIN) rcd --rc-web-gui



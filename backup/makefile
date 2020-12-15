# test backup

BIN=$(PWD)/bin/backup

# Google drive test. Everyone has a Google Drive :)
# 1. Get a Google Application Client ID
# Proj: gedw99-rclone-backup-test

print:

build:
	go build -o $(BIN) .

init:
	# encrypt the config
	$(BIN) config
gdrive:

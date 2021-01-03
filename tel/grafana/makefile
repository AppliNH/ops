# https://grafana.com/grafana/download

# Problem: downloads a tons of shit.

# calc bin name for OS and ARCH
GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)

VERSION=7.3.6

BIN_FSPATH=$(PWD)/grafana-$(VERSION)
BIN_SERVER=$(PWD)/grafana-$(VERSION)/bin/grafana-server
BIN_CLI=$(PWD)/grafana-$(VERSION)/bin/grafana-cli

print:
	@echo grafana
	@echo VERSION $(VERSION)
	@echo BIN_SERVER $(BIN_SERVER)
	@echo BIN_CLI $(BIN_CLI)
	

dep:
	if [ $(GOOS) = darwin ]; then \
		curl -O https://dl.grafana.com/oss/release/grafana-$(VERSION).darwin-amd64.tar.gz; \
		tar -zxvf grafana-$(VERSION).darwin-amd64.tar.gz; \
	fi
	if [ $(GOOS) = linux ]; then \
		wget https://dl.grafana.com/oss/release/grafana-$(VERSION).linux-amd64.tar.gz; \
		tar -zxvf grafana-$(VERSION).linux-amd64.tar.gz; \
	fi

	if [[ $(GOOS) = windows ]]; then \
		curl -O https://dl.grafana.com/oss/release/grafana-$(VERSION).windows-amd64.zip; \
	fi
dep-delete:
	rm -rf grafana-$(VERSION)



run-kill:
	pkill grafana-server
	#pkill grafana-cli
	
run-server:
	cd $(BIN_FSPATH) && $(BIN_SERVER)
	# http://localhost:3000
	#  admin/admin
run-cli:
	# this runs the server actually but can be killed with crtl c...
	cd $(BIN_FSPATH) && $(BIN_SERVER)

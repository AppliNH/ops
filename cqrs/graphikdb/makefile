#https://github.com/graphikDB

ORG=https://github.com/graphikDB

BIN_FSPATH=$(PWD)/_bin



GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)

VERSION=0.0.1

BIN_PROXY=$(BIN_FSPATH)/$(GOOS)/gproxy_$(GOOS)_$(GOARCH)
BIN_SERVER=$(BIN_FSPATH)/$(GOOS)/graphik_$(GOOS)_$(GOARCH)
BIN_CLI=$(BIN_FSPATH)/$(GOOS)/graphikctl_$(GOOS)_$(GOARCH)

print:
	
	@echo VERSION $(VERSION)
	@echo BIN_PROXY $(BIN_PROXY)
	@echo BIN_SERVER $(BIN_SERVER)
	@echo BIN_CLI $(BIN_CLI)



dep-os:
	# gox
	go get github.com/mitchellh/gox
	gox -h


dep:
	git clone $(ORG)/assets
	git clone $(ORG)/graphik
	git clone $(ORG)/graphikctl
	git clone $(ORG)/graphik-todo
	git clone $(ORG)/gproxy
	git clone $(ORG)/kubego
	git clone $(ORG)/terraform-provider-graphik
	git clone $(ORG)/trigger

dep-delete:
	rm -rf assets
	rm -rf graphik
	rm -rf graphikctl
	rm -rf graphik-todo
	rm -rf gproxy
	rm -rf kubego
	rm -rf terraform-provider-graphik
	rm -rf trigger
	

build:
	# gproxy
	cd gproxy && $(MAKE) build
	cp -r gproxy/bin/. $(BIN_FSPATH)

	# graphik
	#cd graphik && $(MAKE) gen
	cd graphik && $(MAKE) build
	cp -r graphik/bin/. $(BIN_FSPATH)

	# graphikctl
	cd graphikctl && $(MAKE) build
	cp -r graphikctl/bin/. $(BIN_FSPATH)

run-proxy:
	$(BIN_PROXY)
run-server:
	$(BIN_SERVER)
run-cli:
	$(BIN_CLI)

LIB=https://github.com/knative/client
LIB_FSPATH=$(PWD)/client

BIN_FSPATH=$(PWD)/bin
BIN=$(BIN_FSPATH)/kn

# calc bin name for OS and ARCH
GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)
export GOFLAGS=-ldflags=-s -ldflags=-w
export CGO_ENABLED=0


print:
	@echo
	@echo GOOS:  		$(GOOS)
	@echo GOARCH:  		$(GOARCH)
	@echo GOFLAGS:  	$(GOFLAGS)
	@echo CGO_ENABLED:  $(CGO_ENABLED)
	@echo

	@echo LIB:  			$(LIB)
	@echo LIB_FSPATH:  		$(LIB_FSPATH)
	@echo
	@echo BIN_FSPATH: 		$(BIN_FSPATH)
	@echo BIN: 				$(BIN)
	

dep:
	git clone $(LIB)
dep-delete:
	rm -rf $(LIB_FSPATH)

build:
	cd $(LIB_FSPATH)/cmd/kn && go build -o $(BIN) .

run:
	$(BIN) service list

	
	


	
LIB=https://github.com/google/ko
LIB_FSPATH=$(PWD)/ko

BIN_FSPATH=$(PWD)/bin
BIN=$(BIN_FSPATH)/ko

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
	cd $(LIB_FSPATH) && go build -o $(BIN) .

run:
	$(BIN)
	# not needed - this just talks to local docker whihc is not needed
	$(BIN) auth login my.registry.io -u username --password-stdin


EX_FSPATH=/Users/apple/workspace/go/src/github.com/joe-getcouragenow/ops/deploy/example

export KO_DOCKER_REPO=?


example-run:
	cd $(EX_FSPATH) && $(BIN) create

	
	


	
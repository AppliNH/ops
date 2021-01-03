
LIB=https://github.com/faceair/tempo
LIB_FSPATH=$(PWD)/tempo

BIN_FSPATH=$(LIB_FSPATH)/bin

GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)

print:
	@echo
	@echo GOOS:  		$(GOOS)
	@echo GOARCH:  		$(GOARCH)
	@echo

	@echo LIB:  		$(LIB)
	@echo LIB_FSPATH:  	$(LIB_FSPATH)

	@echo BIN: 			$(BIN)
	@echo BIN_FSPATH: 	$(BIN_FSPATH)


dep:
	git clone $(LIB)
dep-delete:
	rm -rf $(LIB_FSPATH)

build:
	cd $(LIB_FSPATH) && make tempo
	cd $(LIB_FSPATH) && make tempo-query
	cd $(LIB_FSPATH) && make tempo-cli

build-all:
	# cross build.


run-tempo:
	$(BIN_FSPATH)/$(GOOS)/tempo-$(GOARCH)
	# http://localhost:8482/debug/pprof/

run-tempo-query:
	$(BIN_FSPATH)/$(GOOS)/tempo-query-$(GOARCH)
	#  http://localhost:8481/debug/pprof/
run-tempo-cli:
	$(BIN_FSPATH)/$(GOOS)/tempo-cli-$(GOARCH)
	# http://localhost:8480/debug/pprof/
	
open:
	open http://localhost:8428/
	open http://:8428/debug/pprof/




	
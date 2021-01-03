
LIB=https://github.com/monitoring-mixins/mixtool
LIB_FSPATH=$(PWD)/mixtool

BIN_FSPATH=$(PWD)/bin
BIN_NAME=mixtool-$(GOOS)-$(GOARCH)
BIN=$(BIN_FSPATH)/$(BIN_NAME)

# calc bin name for OS and ARCH
GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)

# IF we use this alot prob worth forking and making a release.


print:
	@echo
	@echo GOOS:  $(GOOS)
	@echo GOARCH:  $(GOARCH)
	@echo

	@echo LIB:  $(LIB)
	@echo LIB_FSPATH:  $(LIB_FSPATH)
	@echo
	@echo
	@echo BIN_FSPATH: $(BIN_FSPATH)
	@echo BIN_NAME: $(BIN_NAME)
	@echo BIN: $(BIN)

dep:
	git clone $(LIB)
dep-delete:
	rm -rf $(LIB_FSPATH)

build:
	cd $(LIB_FSPATH) && make build
	mkdir -p $(BIN_FSPATH)
	cp $(LIB_FSPATH)/_output/$(GOOS)/$(GOARCH)/mixtool $(BIN)

build-all:
	# Error: "go get: cannot install cross-compiled binaries when GOBIN is set"
	# I turned it off in  $HOME/.zshrc, but still get the error...
	cd $(LIB_FSPATH) && make crossbuild





### RUN

# Shows examples of usage..

RUN_FSPATH=$(PWD)/run

run-init:
	rm -rf $(RUN_FSPATH)
	mkdir -p $(RUN_FSPATH)

run-list:
	$(BIN)

	$(BIN) list

run-new: run-init
	cd $(RUN_FSPATH) && $(BIN) new grafana-dashboard my-dashboard.jsonnet 
	cd $(RUN_FSPATH) && $(BIN) new prometheus-alerts my-alerts.jsonnet 
	cd $(RUN_FSPATH) && $(BIN) new prometheus-alerts my-rules.jsonnet 
run-lint:
	# Lots of errors due to dependencies.. Still learning this..
	cd $(RUN_FSPATH) && $(BIN) lint my-dashboard.jsonnet 
	cd $(RUN_FSPATH) && $(BIN) lint my-alerts.jsonnet 
	cd $(RUN_FSPATH) && $(BIN) lint my-rules.jsonnet 

### EXAMPLE mixins

# many: https://github.com/MacroPower/awesome-jsonnet#mixins

# https://github.com/coreos/zincati/tree/master/contrib/monitoring-mixins

mixin-dep:
	# https://github.com/grafana/loki/tree/master/production/loki-mixin
	git clone https://github.com/grafana/loki $(PWD)/mixin/loki
mixin-dep-delete:
	rm -rf $(PWD)/mixin/loki
mixin-lint:
	cd $(PWD)/mixin/loki/production/loki-mixin && $(BIN) lint mixin.libsonnet
	#cd $(RUN_FSPATH) && $(BIN) lint $(PWD)/mixin/loki/production/loki-mixin/mixin.libsonnet





	
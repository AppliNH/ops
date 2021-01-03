LIB=https://github.com/faceair/VictoriaLogs
LIB_FSPATH=$(PWD)/VictoriaLogs

BIN_FSPATH=$(PWD)/bin

# calc bin name for OS and ARCH
GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)

BIN_FSPATH=$(PWD)/bin

print:
	@echo
	@echo GOOS:  $(GOOS)
	@echo GOARCH:  $(GOARCH)
	@echo

	@echo LIB:  $(LIB)
	@echo LIB_FSPATH:  $(LIB_FSPATH)
	@echo
	@echo BIN_FSPATH: $(BIN_FSPATH)
	

dep:
	git clone $(LIB)
dep-delete:
	rm -rf $(LIB_FSPATH)

build:
	# all-pure is no CGO which we want.
	cd $(LIB_FSPATH) && $(MAKE) all-pure
	mkdir -p $(BIN_FSPATH)
	cp -r $(LIB_FSPATH)/bin/. $(BIN_FSPATH)

run-kill:
	pkill vmstorage-pure
	pkill vmselect-pure
	pkill vminsert-pure

run-storage:
	cd $(BIN_FSPATH) && ./vmstorage-pure
	# http://localhost:8482/debug/pprof/

run-select:
	cd $(BIN_FSPATH) && ./vmselect-pure -storageNode 127.0.0.1:8401
	#  http://localhost:8481/debug/pprof/
run-insert:
	cd $(BIN_FSPATH) && ./vminsert-pure -storageNode 127.0.0.1:8400 -importerListenAddr 127.0.0.1:2003
	# http://localhost:8480/debug/pprof/

configure:
	# Set Grafana Loki datasource, See: https://grafana.com/docs/loki/latest/getting-started/grafana/

	# vmselect-pure ULR cal is: http://127.0.0.1:8481/select/0/loki/api/v1/query_range

	open: http://localhost:3000/datasources/new
	# select "Loki"
	# Set URL="http://127.0.0.1:8481/select/0/"


	
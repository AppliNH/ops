# https://github.com/VictoriaMetrics/VictoriaMetrics

LIB=https://github.com/VictoriaMetrics/VictoriaMetrics
LIB_FSPATH=$(PWD)/VictoriaMetrics

BIN_FSPATH=$(PWD)/bin

# calc bin name for OS and ARCH
GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)


BIN=$(BIN_FSPATH)/victoria-metrics

print:
	@echo
	@echo GOOS:  $(GOOS)
	@echo GOARCH:  $(GOARCH)
	@echo

	@echo LIB:  $(LIB)
	@echo LIB_FSPATH:  $(LIB_FSPATH)
	@echo BIN_FSPATH: $(BIN_FSPATH)
	@echo BIN: $(BIN)

dep:
	git clone $(LIB)

build:
	cd $(LIB_FSPATH) && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-linux-amd64 ./app/victoria-metrics

build-all:
	cd $(LIB_FSPATH) && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-linux-amd64 ./app/victoria-metrics
	cd $(LIB_FSPATH) && CGO_ENABLED=0 GOOS=linux GOARCH=arm64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-linux-arm64 ./app/victoria-metrics
	cd $(LIB_FSPATH) && CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-darwin-amd64 ./app/victoria-metrics
	# windows not buildable on darwin.
	cd $(LIB_FSPATH) && CGO_ENABLED=0 GOOS=windows GOARCH=amd64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-windows-amd64.exe ./app/victoria-metrics

run:
	cd $(BIN_FSPATH) && $(BIN)-$(GOOS)-$(GOARCH)

open:
	open http://localhost:8428/
	open http://:8428/debug/pprof/




	
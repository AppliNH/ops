# https://github.com/VictoriaMetrics/VictoriaMetrics

CODE_FSPATH=$(PWD)/VictoriaMetrics

BIN_FSPATH=$(PWD)/bin

# calc bin name for OS and ARCH
GOARCH=$(shell $(GOARCH))


BIN=$(BIN_FSPATH)/victoria-metrics

print:
	@echo GOOS:  $(GOOS)
	@echo GOARCH:  $(GOARCH)
	@echo CODE_FSPATH:  $(CODE_FSPATH)
	@echo BIN_FSPATH: $(BIN_FSPATH)
	@echo BIN: $(BIN)

dep:
	git clone https://github.com/VictoriaMetrics/VictoriaMetrics

build:
	cd $(CODE_FSPATH) && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-linux-amd64 ./app/victoria-metrics

build-all:
	cd $(CODE_FSPATH) && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-linux-amd64 ./app/victoria-metrics
	cd $(CODE_FSPATH) && CGO_ENABLED=0 GOOS=linux GOARCH=arm64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-linux-arm64 ./app/victoria-metrics
	cd $(CODE_FSPATH) && CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-darwin-amd64 ./app/victoria-metrics
	# windows not buildable on darwin.
	cd $(CODE_FSPATH) && CGO_ENABLED=0 GOOS=windows GOARCH=amd64 GO111MODULE=on go build -mod=vendor -o $(BIN_FSPATH)/victoria-metrics-windows-amd64.exe ./app/victoria-metrics

run:
	cd $(BIN_FSPATH) && $(BIN)-$(GOOS)-$(GOARCH)





	
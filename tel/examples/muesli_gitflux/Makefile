
# https://github.com/muesli/gitflux

CODE_FSPATH=$(PWD)/gitflux

print:
	@echo
	@echo CODE_FSPATH:  $(CODE_FSPATH)

dep:
	git clone https://github.com/muesli/gitflux

dep-os:
	# influx https://github.com/influxdata/influxdb
	git clone https://github.com/influxdata/influxdb

influx-build:
	cd influxdb && $(MAKE) build
	# grafana

run:
	cd $(CODE_FSPATH) && go run .



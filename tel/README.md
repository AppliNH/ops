# Telemetry

## Design and needs

For all of this we need to be able to embed into a single binary as well as cluster HA

Store

- Victoria Metrics is the only one that allos single embedded and Clustered so it is a winner for us.
	- It can also hold Logs usng Loki. Its very beta though.

Dashboard

Grafana is a good fit in terms of the way its security model works:
- Org
- Teams.. This is the equivalent of our Orgs / Projects concept.
- Plugins.. Each of our Modules is really a grafana plugin because each module has different needs of the type of data they want to report on and display.

- Grafana is the only main stream one i could find.
	- Problem is that its golang but does NOT embed the many -ts files. Wonder if we can hack it to use embedded ?

- For biz metrics we definitly also wan to display metrics using Flutter.
	- I think this is possible.

JSONNET

- grafana and the community is using the mixtool and the same jssonet tools we use, so it feels like a good solution.

## LIBS



Victoria metrix

single binary

- https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/app/victoria-metrics/main.go

windows not supported:

- looks like this is needed: https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/lib/filestream/filestream_windows.go
- Issues and Pr: https://github.com/VictoriaMetrics/VictoriaMetrics/issues/70
	- https://github.com/Lnek/VictoriaMetrics/commit/9ad60af2cbf5eb8805c937727cd3a5052a30679c
		- only addresses memory.

loki support:
- so we can do logging with it too.
- https://github.com/faceair/VictoriaLogs

support any type of analytics for biz:

- https://victoriametrics.github.io/#how-to-import-data-in-json-line-format

Encryption at rest:

- https://github.com/VictoriaMetrics/VictoriaMetrics/issues/972


## Dashbaords

### graphana (ops)

Provisioning

How to refelct on grafana from golang and export dashboards to grafana.
https://mpostument.com/2020/12/19/export-grafana-dashboards-with-go/

uses jsonnet !

https://github.com/grafana/grafonnet-lib
https://grafana.github.io/grafonnet-lib/usage/
- latest way to do it.
- "import 'grafonnet/grafana.libsonnet';"

Mixtool uses "import 'grafonnet/grafana.libsonnet';"
https://github.com/monitoring-mixins/mixtool
https://monitoring.mixins.dev/

https://github.com/grafana/jsonnet-libs/blob/master/grafana-builder/grafana.libsonnet

https://github.com/grafana/grizzly


### flutter (biz)
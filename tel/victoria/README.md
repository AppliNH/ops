# Victoria

Its fast and simple.

No encryption at rest. Are they interested in a PR for it ?


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


Exorting


Dashbaords

- graphana (ops)

- flutter (biz)
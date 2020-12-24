# deps

Use mage.

Golang stuff
binary stuff 
- protoc

All versioned..

---

DEPS
github.com/izumin5210/gex
- examples
- https://github.com/VixsTy/grimoire/blob/master/tools/tools.go
- https://github.com/zntrio/solid/blob/main/tools/tools.go

MAKE
https://github.com/panther-labs/panther
- nice and reusable
- binaries ( like protoc)
- release the golang if we want
	- speeds up CI and DEV.
- deployment
	- encapsulate here:
		- docker, k8
			- terraform
				- providers give users choice.
		- binaries (desktop and server)
			- nomad
			- caddy v2
				- binary and vhost with caddy.
				- Can also terrform caddy to hertzenr etc
					- then just update binaries by pointing back to github release..

https://github.com/grafana/grafana-plugin-sdk-go/blob/master/build/common.go
- used by: https://github.com/ryantxu/noaa-datasource/blob/main/Magefile.go
- simple


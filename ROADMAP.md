# Roadmap

Goals

- embedded as single binary like everything else, but also can break out to seeperate.
- combine CQRS that we need for the core archi with the needs of analytics. They basically are the same thing. Events, Event Processors and then Event Aggrgattion ( a Materialized View) and then it gos back aroudn again in that the CUD on the Materialiszed View is an Event. SO you end up with pipes or graphs of events...
- the difference of course is that analytics needs a TimeSeries DB, and Core does not. But they both need CQRS style of architecture.


SO Ops incorporates many touch points
- auth and authz
	- support windows LDAP and kerberos SSO users using Active Directory
		- https://github.com/jcmturner/authenvoy
	- support non winwos usign openLDAP
		- https://github.com/go-ldap
		- https://github.com/deejross/direktor
			- viewer
- deployment and keeping track of what version is where and how it is configured
	- on fly, the proxy will run in a different server that fronts the domain
	- add notes to docs to explain why firecracker is way more secure.
- proxy to do tracking, acl checking, content moderation ( think porn, etc)
	- quite a bit like: https://www.cisco.com/c/en/us/products/security/securex/index.html#~why-cisco
	- https://github.com/andybalholm/redwood
		- thsi does almost all of what we need.
	- which feeds into analytics.
	- the proxy layer will do more later like ngrok tunnels too.
	- outreach tracking like detecting that an email has been viewed..
	- referrer trackng to see where the user comes from and also where they go to ( like when a chat message has a link to another domain)
	- js and css modification for the outreach trackng aspects. so we can check where a user coming back is form in terms of outreach camppaigns
	- forum moderation. raise alert of sentiment is getting heated or peopel are swering.
	- DNS chekcing to ensure its over Crypto DNS.
		- DNS over TLS, defined by two standards-track RFCs, RFC 7858 and RFC 8310
		- DNS over HTTPS, standardized in RFC 8484
		- DNSCrypt
	- phishing attack protecttion.
- cache
	- the proxy can also do caching
	- caching of data and images based on hash, etc.
	- SQL caching
		- SQL redirect for read verus write operations. This SQL rewriting is needed anyway for CQRS architecture.
		- https://github.com/XiaoMi/soar/tree/master/database
		- https://github.com/pingcap/ticdc
			- which uses this sql parser: github.com/pingcap/parser
- continum style services
	- thsi is at proxy level because its all services that are global and shared between your devices.
	- this replaces the "share" functioality that Apple, MS and Google all use to "trap you into their hardware / software"
		- copy and paste any thing between devices:
			- https://github.com/thealamu/pbgopy-clip
			- https://github.com/nakabonne/pbgopy
		- Share any "page" to another device. It just looks up the Url Schema and opens the app on your other devics.
	- basically many of these things: https://www.prophethacker.com/2015/08/google-chrome-android-mobile-tricks-tips-secrets.html
		- Save as PDF
		- chrome://flags for feature flags
		- Sync Your boomarks With Other Devices
		- save your passwords, and 2FA OTP asepcts.
		-  Switch Between Tabs using a flutter shell.
			- The OS does it: https://www.howtogeek.com/429223/master-windows-10s-alttab-switcher-with-these-tricks/
			- Now the browser does it: https://9to5google.com/2019/09/19/chrome-android-tab-grid/
			- We just incorporate this into the Proxy and do it for all pages.
				- its just a matter of screenshotting the flutetr canvas and sending them to the Proxy.
		- Share screen shot or part of screen ( like apple does)
			- https://pub.flutter-io.cn/packages/screenshot
		
- dev ops to turn on logging, metrics, tracing.
	- the proxy can do logging of all urls at least.
- reporting of the bsuiness and dev analytcis
- feedback looping that data back to the proxy
- export to csv for any extra analysis.



It is likely that some of this will run outside the main code base.




---

RUn it all in Web !!
https://github.com/pichillilorenzo/flutter_inappwebview
- instant updates, but native ONYL where you need it.
- WASM sandboxing, ect

GUI
https://github.com/wtfutil/wtf
- quick and dirty

https://github.com/tucnak/telebot
- high quality channel
- can use as a way to manage servers and do alerts

DEVS
gitpod and Theia
https://www.gitpod.io/docs/ide/

DEPLOY
- fly
- firecracker and weave.

## PROTOCOLS

Goal - be very Light !!! Dont want to glog up the system with ops overheads

COAP for serialisation
https://github.com/plgd-dev/go-coap

Broccoli for compression and embedding. This will allow use to use the same compression for server and for client ( when we start using WASM)
https://github.com/thealetheia/broccoli

Light devs ops for log, testing, tracing
https://github.com/thealetheia/cutest

## Collectors

github.com/rudderlabs/analytics-go

- examples
https://github.com/mattermost/mattermost-server/blob/master/services/telemetry/telemetry.go

https://github.com/utilitywarehouse/customer-tracking-sdk
https://github.com/utilitywarehouse/customer-tracking-sdk/tree/master/go/tracking
- uses many providers:
	- github.com/rudderlabs/analytics-go
	- mixpanel: https://api-eu.mixpanel.com
https://github.com/utilitywarehouse/customer-tracking-sdk/blob/master/contract/tracking.proto
	- all driven from protos :)
- https://github.com/utilitywarehouse/customer-tracking-sdk/tree/master/examples
	- go
	- js ( so flutter can use it too)


## Open Tel

All the offerings
https://github.com/open-telemetry/opentelemetry.io/tree/master/content/en/registry

newrelic
https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/master/exporter/newrelicexporter/go.mod
- "github.com/open-telemetry/opentelemetry-collector-contrib/exporter/newrelicexporter"
https://github.com/newrelic/opentelemetry-exporter-go
- https://docs.newrelic.com/docs/query-your-data/explore-query-data/data-explorer/introduction-data-explorer
	- can do biz stuff



## Processors

https://wtfutil.com/modules/google/analytics/
- ga

bethos
- web based IDE
- embedded processor :)
- Proto aware & works directly on protos
- nice scripting lang.
- plugsin
	- https://github.com/Kiennh/benthos-plugin

## Grafana

https://github.com/grafana/grizzly
- JSONET based config for grafana :)

GitHub - weaveworks/grafanalib: Python library for building Grafana dashboards


https://github.com/weaveworks/grafanalib
Uber m3db can talk prom and graphite / Grafana 
- Try m3db 
- Try to install grafana and prom
- Then see if it’s good enough
If fly can run m3db it will be good enough

https://github.com/liftbridge-io/liftbridge/blob/master/server/server.go
- embeds nats and is simple for recoridng and than pushng any mesage.
- this relates to Ops because All analytics systms are just Event messages that are then picked by an Event Processors and output to an Event Aggrgeation system.
- nice cli
	-  https://github.com/liftbridge-io/liftbridge-cli
- Beign heavily used by ABly Real time 
	- https://github.com/cruickshankpg
		- flu: https://github.com/ably/ably-flutter
		- IDL Spec: https://docs.ably.io/client-lib-development-guide/features/#idl

## Servers

Fly is Firecracker

https://appfleet.com/blog/deploying-secure-firecracker-microvms-on-k8s-using-weave-firekube/
- same

https://github.com/talos-systems/talos
- firecrackr but bettr !!!!


## CQRS

https://github.com/function61/eventhorizon

The other stuff is perfect for us !!
# rudder labs

github.com/rudderlabs/analytics-go

- Is a copy of Segment and matches their API.
- they have SDK for JS, ios and android.
	- but utilitywarehouse have wrapped rubber with a proto for easy usage. https://github.com/utilitywarehouse/customer-tracking-sdk/blob/master/contract/tracking.proto
	- so we can use this if we embed it in flutter native and web whcih gives as Proto based API
		- embedding in Web means we need to embrace WASM though..

https://github.com/rudderlabs/rudder-server

- Has a dependency on JS : https://github.com/rudderlabs/rudder-transformer

Users:

https://github.com/utilitywarehouse/customer-tracking-sdk
- pure go and proto.

Used very heavily by mattermost
https://github.com/mattermost/mattermost-server/blob/master/services/telemetry/telemetry.go

https://github.com/mattermost/mattermost-utilities/blob/master/pluginops/go.mod
- Utilies refence the server and so are used by their Modules.

--

https://github.com/Jeffail/benthos

- more generalised with transformation engine which is what we want.
- Can use Proto reflections

--

https://github.com/kelindar/talaria
- more for Module CQRS but also has Time asepct. Can be sued for both ?


---

Should be use Cockroach embedded ?
https://github.com/cockroachdb/cockroach/blob/master/pkg/server/testserver.go
https://github.com/cockroachdb/cockroach-gen/blob/master/pkg/server/testserver.go
- Shoudl use Gen ?


https://github.com/glerchundi/sqlboiler-crdb
- will make migrations etc much easier.




# Ops

Things for running the system.

## CQRS

There is a common need for a CQRS based overlay architecture.

The current sys-acconts is pure RPC and the sys-eventbus is used to route events to each Module. But that is only for the runtime and not for the store.

A CQRS store system is one in which events are created in an Event Store, and then Handlers process the event, and update Materialized Views in the store.
The Materialised Views have queries against them that are "watched" and so when a change occurs on a Materialised VView we can update all subscribers.

We need this CQRS system for:

- Modules need their data to be reactive so that data updates in real time.

- Outreach Module needs to also be reactive because it needs to react to events from external systems.

- Business Telemetry is always evrnts and then aggregations ( Materialized Views).

- Developer Telemetry needs the same as Business Analytics.


## Techncial Options

Can we use the same Developer Telemtry system for a CQRS system for Modules ?

NO because Telemetry is TimeSeries and the Modules is SQL based.

But i think Business Telemetry and Developer Telementry can use the same system.

- Prom and Grafana are the classic tools
- Store and processors can be Prom based.
- Flutter GUI can be used for the  Business Telemetry.
- Grafana Web GUI can be used for the Developer Telemetry.


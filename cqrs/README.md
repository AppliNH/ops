# CQRS

We need this now to scale up and get into real time.

https://www.ably.io/documentation
https://www.ably.io/design-patterns

The archi is almsot the same as this: https://github.com/ably, https://www.ably.io/documentation
- they are using liftbridge btw_ https://github.com/ably-forks/go-liftbridge
- they are working on crdt: https://github.com/ably-forks/crdt-website, https://github.com/ept/crdt-website
	- Martin :)

- co-ordination needed
- https://tailscale.com/blog/how-nat-traversal-works/
- https://tailscale.com/blog/how-tailscale-works/#the-control-plane-key-exchange-and-coordination


Its 3 layers to it.
1. Event store. Events are sent in and the Databases Views update.
2. Badger DB is updated by event. Essentially the Databases are now the Read Only side.
3. On the subscriptin side, when a DB Views is modified we just tell all consumers.

The GUi then can be ELM archi: https://guide.elm-lang.org/architecture/



## Migrations

Need our databaes to be updates and the events also.
So the updates are themselves an event sent into the system in reality.

## Event store

LIftbridge scales out NATS, and have great story now.

https://github.com/liftbridge-io/liftbridge

https://github.com/liftbridge-io/go-liftbridge
- this is dependent on NATS, so we need our own API for Clients liek Flutter and CLI.
- This Client API is 100% related to the CQRS design concept of Views, where devs at flutetr level can create new Database Views on the FLY.


## Push

Need platfrom level Push to wake up apps, etc

https://github.com/appleboy/gorush/issues/552

## search

Need high quality Search and facets.

This is the type of thing we need. 

https://github.com/meilisearch/MeiliSearch
https://docs.meilisearch.com/guides/introduction/quick_start_guide.html#create-your-index
go get -u github.com/meilisearch/meilisearch-go


## Clients

All the ION stuff will be easily to hook in.

### GIO GUI

code: https://github.com/gioui/gio
twitter: https://twitter.com/giouiorg?lang=en
meetup: https://www.youtube.com/channel/UCzuKUnKK5gAFJKNyA1imIHw/videos

https://github.com/gioui/gio/pull/4
- They now accept pull requests via github !!! SO its ready for hacking on.
- this is also ELM archi based btw.
- Its getting fixed so its works on Browsers with WASM : https://github.com/gioui/gio/pull/4
	- worth considering.

- many projects usable now: https://github.com/search?o=desc&q=gioui.org&s=indexed&type=Code

- I think the ION stuff wudl have to still use Flutter but that fine, because we can ship one inside the other i expect.

- i18n with RTL / LTR does not work wiht it last time i checked: https://todo.sr.ht/~eliasnaur/gio/146


### Flutter GUI

### TUI

bubbletea
https://github.com/charmbracelet/bubbletea
https://golangexample.com/a-powerful-little-tui-framework/
- looking like the leader
- follow ELM pattern.

### CLI 


PDF
Yes PDF is a CLient view, so that we cna prodcue a PDF of any screen without the hacky browser basis.

# keystore

The passwords used for encrypting data need to be stored in a secure place like a TPM basd Key store.

This the daemon can then access the key store when its starts up again.


Windows, Linux, Mac can use golang. Server and GUI cna use it.
IOS, Android can use the flutter one. Mobile GUI can use it.

# libs

Golang

https://github.com/keys-pub/keys
doc: https://keys.pub/docs/cli/building.html
- looks really perfect for us.
- has a DB that stires keys encrypted.
- has tpm code and it( no CGO. :)
- CLI to desktop at https://github.com/keys-pub/keys/tree/master/keyring


https://github.com/jerson
- allows use to sign client side which we need
- allows use to use pure go mobile with flutter.
- working on Web ( wasm ), desktops, mobiles :)
- uses Proto as the bridge between golang and flutter over FFI: https://github.com/jerson/openpgp-mobile/blob/master/proto/bridge.proto
- fully ci: https://github.com/jerson/openpgp-mobile/tree/master/.github/workflows
- has a gateway: https://github.com/jerson/pgrok
	- to expose local desktop software to the internet via a gateway.




Flutter
https://github.com/mogol/flutter_secure_storage
- used by many so prob works: https://pub.dev/packages?q=dependency%3Aflutter_secure_storage

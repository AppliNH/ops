# https://github.com/timothyye/godns.git

BIN_DIR=$(PWD)/bin
BIN=$(BIN_DIR)/ddns

print:

dep:
	git clone https://github.com/timothyye/godns.git

build:
	cd godns/cmd/godns && go build -o $(BIN) .

run:
	# assumes config is in same foldr as binary. Make your own from the examples.
	cd $(BIN_DIR) && $(BIN)

test-ping:
	ping ddns.ubuntusoftware.net



	
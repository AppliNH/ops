# https://github.com/termbacktime/termbacktime

BIN_DIR=$(PWD)/bin
BIN=$(BIN_DIR)/termshot

print:
	@echo $(BIN)

dep:
	git clone https://github.com/termbacktime/termbacktime

build:
	cd termbacktime && go build -o $(BIN) .

run:
	cd $(BIN_DIR) && $(BIN)

record:
	# needs github auth first
	#$(BIN) auth
	$(BIN) auth --set-token 6f39ab1a713a71cea18b8d0c8e6eefa4b332005a

	$(BIN) record --open
	
live:
	# does not use github at all
	$(BIN) live




	
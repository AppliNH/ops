# https://github.com/VixsTy/grimoire

BIN_DIR=$(PWD)/bin
BIN=$(BIN_DIR)/grimoire

print:
	@echo $(BIN)

dep:
	git clone https://github.com/VixsTy/grimoire

build:
	cd deployer/sample && go build -o $(BIN) .

run:
	# The sample that was compiled is hardcoded to a specific topology.
	$(BIN)

	



	
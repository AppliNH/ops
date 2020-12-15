# https://github.com/jerson/deployer

BIN_DIR=$(PWD)/bin
BIN=$(BIN_DIR)/deployer

print:
	@echo $(BIN)

dep:
	git clone https://github.com/jerson/deployer

build:
	cd deployer/sample && go build -o $(BIN) .

run:
	# The sample that was compiled is hardcoded to a specific topology.
	$(BIN)

	



	
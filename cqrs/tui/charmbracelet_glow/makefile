LIB=https://github.com/charmbracelet/glow
LIB_FOLDER=$(PWD)/glow

BIN=glow
BIN_FOLDER=$(PWD)/bin/$(BIN)

print:

dep:
	git clone $(LIB) 
delete-delete:
	rm -rf $(LIB_FOLDER)

build:
	cd $(LIB_FOLDER) && go build -o $(BIN_FOLDER) .

run:
	$(BIN_FOLDER)
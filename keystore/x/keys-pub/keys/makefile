
LIB=https://github.com/keys-pub/keys

FOLDER=$(PWD)/keys
print:
	echo $(LIB)
dep:
	git clone $(LIB)

test:
	cd $(FOLDER) && go test . -v
run:
	cd $(FOLDER) && go run .
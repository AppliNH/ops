
LIB=https://github.com/keys-pub/keys-ext

FOLDER=$(PWD)/keys-ext
print:
	echo $(LIB)
dep:
	git clone $(LIB)

test:
	cd $(FOLDER) && go test . -v
run:
	cd $(FOLDER) && go run .
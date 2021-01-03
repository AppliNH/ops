
LIB=https://github.com/zalando/go-keyring

FOLDER=$(PWD)/go-keyring
print:
	echo $(LIB)
dep:
	git clone $(LIB)

test:
	cd $(FOLDER) && go test . -v
run:
	cd $(FOLDER) && go run .
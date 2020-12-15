BIN=$(PWD)/bin/gowitness
#BIN_ARG=--disable-db --fullpage single
BIN_ARG=--fullpage single

TEST_URL_00=https://news.ycombinator.com/
TEST_URL_01='https://gallery.flutter.dev/#/reply'
TEST_URL_01=https://flutter.github.io/samples/web/form_app/#/




print:
	@echo 
	@echo BIN: $(BIN)
	@echo BIN_ARG: $(BIN_ARG)
	@echo


dep:
	git clone https://github.com/sensepost/gowitness

build:
	cd gowitness && go build -o $(BIN) .
run-test:
	# gowitness --fullpage single https://news.ycombinator.com/
	#$(BIN) --fullpage single https://news.ycombinator.com/

	$(BIN) $(BIN_ARG) $(TEST_URL_00)
	$(BIN) $(BIN_ARG) https://gallery.flutter.dev/#/reply
	$(BIN) $(BIN_ARG) https://flutter.github.io/samples/web/form_app/#/
	$(BIN) $(BIN_ARG) https://flutter.github.io/samples/web/chart

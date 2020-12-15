
# tells you what golang processes are running and available
# useful for us since 100% golang based

print:
	@echo hey ops

dep:
	# observes all golang bin running
	go get -u github.com/google/gops
	# lists all goalng bins
	go get -u github.com/rjeczalik/bin/cmd/gobin


example-run:
	# sample golang that is observable
	go run agent.go
example-build:
	go build -o $(GOPATH)/bin/agent agent.go


BIN_NAME=protoc-gen-cobra
bins-list:
	gobin
#usage: 'make bins-update BIN_NAME=protoc-gen-cobra'
bins-update:
	# updates from source. quite cool.
	gobin -u $(BIN_NAME)


PID=1565
gops-list:
	# list whats running
	@echo
	gops
	@echo

	@echo
	gops tree
	@echo

# usage: 'make gops-stats PID=1'
# chose the PID of the example to get all stats.
gops-stats:
	gops $(PID) 
	#get stack trace
	#gops stack (<pid>|<addr>)
	gops stack $(PID)

	gops memstats $(PID)
	gops gc $(PID)
	gops setgc $(PID) 10
	gops version $(PID)
	gops stats $(PID)

	gops pprof-cpu $(PID)
	gops pprof-heap $(PID)

	gops trace $(PID)




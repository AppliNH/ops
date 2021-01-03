LIB=https://github.com/petomalina/cloudrun-ko-example
LIB_FSPATH=$(PWD)/cloudrun-ko-example

BIN_FSPATH=$(PWD)/bin
BIN_SERVER=$(BIN_FSPATH)/server
BIN_SERVER_SIG=$(BIN_FSPATH)/server-sig

# calc bin name for OS and ARCH
GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)
export GOFLAGS=-ldflags=-s -ldflags=-w
export CGO_ENABLED=0


export GCP_PROJECT_ID=joe-ops-example
GCP_PROJECT_URL=https://console.cloud.google.com/home/dashboard?project=$(GCP_PROJECT_ID)
export KO_DOCKER_REPO=eu.gcr.io/$(GCP_PROJECT_ID) ko publish .

print:
	@echo
	@echo LIB:  			$(LIB)
	@echo LIB_FSPATH:  		$(LIB_FSPATH)
	@echo
	@echo BIN_FSPATH: 		$(BIN_FSPATH)
	@echo BIN_SERVER: 		$(BIN_SERVER)
	@echo BIN_SERVER_SIG: 	$(BIN_SERVER_SIG)
	@echo

	@echo
	@echo GOOS:  			$(GOOS)
	@echo GOARCH:  			$(GOARCH)
	@echo GOFLAGS:  		$(GOFLAGS)
	@echo CGO_ENABLED:  	$(CGO_ENABLED)

	@echo
	@echo GCP_PROJECT_ID:  	$(GCP_PROJECT_ID)
	@echo GCP_PROJECT_URL:  $(GCP_PROJECT_URL)
	
	@echo KO_DOCKER_REPO:  	$(KO_DOCKER_REPO)
	@echo
	

dep:
	git clone $(LIB)
dep-delete:
	rm -rf $(LIB_FSPATH)


build:
	cd $(LIB_FSPATH)/cmd/server && go build -o $(BIN_SERVER) .
	cd $(LIB_FSPATH)/cmd/server_signaled && go build -o $(BIN_SERVER_SIG) .

run-server:
	$(BIN_SERVER) 
	# http://localhost:8080/
run-serversig:
	$(BIN_SERVER_SIG) 
	# http://localhost:8080/
	# hit CRTL-C and it shuts down gracefully.

deploy-init:
	# do this and fill in the variables.
	# 1. create Project: https://cloud.google.com/
	# 2. create artifact registry: https://console.cloud.google.com/flows/enableapi?apiid=artifactregistry.googleapis.com
	# 3. enable cloud shell: https://console.cloud.google.com/home/dashboard?project=joe-ops-example&cloudshell=true
	# 4. Make a Docker repos: https://console.cloud.google.com/artifacts/create-repo?project=joe-ops-example&folder=&organizationId=
deploy:
	# 
	cd $(LIB_FSPATH) && ko publish ./cmd/server

	
	


	
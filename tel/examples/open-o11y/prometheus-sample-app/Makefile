# https://github.com/open-o11y/prometheus-sample-app

BOILERPLATE_FSPATH=./../../../boot/boilerplate
include $(BOILERPLATE_FSPATH)/help.mk
include $(BOILERPLATE_FSPATH)/os.mk
include $(BOILERPLATE_FSPATH)/gitr.mk

REPO_MK_FSPATH=./../../
include $(REPO_MK_FSPATH)/hug.mk
include $(REPO_MK_FSPATH)/dwn.mk
include $(REPO_MK_FSPATH)/fly.mk


CODE_FSPATH=$(PWD)/prometheus-sample-app

print:
	@echo hey ops

dep:
	git clone https://github.com/open-o11y/prometheus-sample-app

	go get -u github.com/google/gops

run:
	cd $(CODE_FSPATH) && go run . -listen_address=0.0.0.0:8080 -metric_count=100

curl:
	curl localhost:8080/metrics


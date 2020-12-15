
BOILERPLATE_FSPATH=./../../boot/boilerplate
include $(BOILERPLATE_FSPATH)/help.mk
include $(BOILERPLATE_FSPATH)/os.mk
include $(BOILERPLATE_FSPATH)/gitr.mk

REPO_MK_FSPATH=./../
include $(REPO_MK_FSPATH)/hug.mk
include $(REPO_MK_FSPATH)/dwn.mk
include $(REPO_MK_FSPATH)/fly.mk


### BIN
TAL_BIN=$(PWD)/talosctl
# https://github.com/talos-systems/talos/releases/download/v0.8.0-alpha.2/talosctl-darwin-amd64
# https://github.com/talos-systems/talos/releases/download/v0.8.0-alpha.2/talos-amd64.iso
TAL_BIN_VERSION=0.8.0-alpha.2
TAL_BIN_PLATFORM=??
ifeq ($(OS_detected),Windows)
    TAL_BIN_PLATFORM=NONE
endif
ifeq ($(OS_detected),Darwin)
    TAL_BIN_PLATFORM=talosctl-darwin-amd64
endif
ifeq ($(OS_detected),Linux)
    TAL_BIN_PLATFORM=talosctl-linux-amd64

endif
TAL_BIN_FILE=$(TAL_BIN_PLATFORM)
TAL_BIN_URL=https://github.com/talos-systems/talos/releases/download/v$(TAL_BIN_VERSION)/$(TAL_BIN_FILE)

print:
	@echo hey ops

tal-print:

	@echo -- Fly Dep --
	@echo TAL_BIN_URL: $(TAL_BIN_URL)
	@echo TAL_BIN_URLFILE: $(TAL_BIN_FILE)
	@echo TAL_BIN: $(TAL_BIN)
	@echo



tal-dep: tal-dep-delete
	$(MAKE) DWN_URL=$(TAL_BIN_URL) DWN_FILENAME=$(TAL_BIN_FILE) DWN_BIN_FSPATH=$(TAL_BIN) dwn-download 
	chmod +x ././talosctl-darwin-amd64 version 
	./talosctl-darwin-amd64 version  
tal-dep-delete:
	$(MAKE) DWN_URL=$(TAL_BIN_URL) DWN_FILENAME=$(TAL_BIN_FILE) DWN_BIN_FSPATH=$(TAL_BIN) dwn-delete 
	



dep:





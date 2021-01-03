# MUST have for Windows CI to work..
.DEFAULT_GOAL       := print

BOOTY_FSPATH=./../booty
# OS.mk must be explicitly first...
include $(BOOTY_FSPATH)/os.mk
include $(BOOTY_FSPATH)/help.mk
include $(BOOTY_FSPATH)/gitr.mk
include $(BOOTY_FSPATH)/mkdep/*.mk

all: print dep example-all

print:
	@echo -- OS --
	$(MAKE) os-print
	@echo
	$(MAKE) dep-all-print

dep:
	$(MAKE) dep-all
	
example-all:
	cd ./example && $(MAKE) all




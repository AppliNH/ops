

BOILERPLATE_FSPATH=./../boot/boilerplate
include $(BOILERPLATE_FSPATH)/help.mk
include $(BOILERPLATE_FSPATH)/os.mk
include $(BOILERPLATE_FSPATH)/gitr.mk


REPO_MK_FSPATH=$(PWD)
include $(REPO_MK_FSPATH)/hug.mk
include $(REPO_MK_FSPATH)/dwn.mk
include $(REPO_MK_FSPATH)/fly.mk

print:
	@echo hey ops




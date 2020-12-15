
# downloads things form github ( dwn for short)




DWN_URL=getcourage.org	# Domain for Certs
DWN_FILENAME=hello			# SubDomain for Certs
DWN_BIN_FSPATH=?

dwn-print:

	@echo -- DWN Downloader --
	@echo

	@echo URL github of binary
	@echo DWN_URL: $(DWN_URL)
	@echo

	@echo Filename github of binary
	@echo DWN_FILENAME: $(DWN_FILENAME)
	@echo

	@echo local file system location for binary
	@echo DWN_BIN_FSPATH: $(DWN_BIN_FSPATH)
	@echo
	
dwn-download: dwn-delete
	# Curl from github release
	# switch for OS (https://stackoverflow.com/questions/714100/os-detecting-makefile)
ifeq ($(OS_detected),Windows)
   # what does windows use to download stuff ??
endif
ifeq ($(OS_detected),Darwin)
    # mac
	curl -LJO $(DWN_URL)
	tar -vxf $(DWN_FILENAME)
	tar -vxzf $(DWN_FILENAME)
endif
ifeq ($(OS_detected),Linux)
    # linux
	wget --no-check-certificate --content-disposition $(DWN_URL)
	# --no-check-cerftificate was necessary for me to have wget not puke about https
endif
	# deletes the tar
	rm -f $(DWN_FILENAME)

dwn-delete:
	# deletes the tar and binary
	rm -f $(DWN_FILENAME)
	rm -f $(DWN_BIN_FSPATH)


	



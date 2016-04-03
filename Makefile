#!/usr/bin/make -f -j9
PROG_NAME = NeteXt73-pakiety
OPT_DIR = /opt
PREFIX = /usr
BINDIR = /bin
MOVE_COMMAND = mv
MKDIR = mkdir
INSTALL = install -m
DEB_DIR = pakiety
DEB_FILES = $(wildcard $(DEB_DIR)/*)
DEB_DIR_FIRMWARE = iwlwifi
DEB_FILES_FIRMWARE = $(wildcard $(DEB_DIR_FIRMWARE)/*)
DEB_DIR_QCA9377 = pakiety
DEB_FILES_QCA9377 = $(wildcard $(DEB_DIR)/*)

make: nothing_to_make
nothing_to_make:
	
	@echo -e '\033[1;32mNie będę budował NeteXt73 :)...\033[0m'
	
install: install_pakiety 
	 
	 $(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)

install: install_pakiety \
	 install_pakiety_firmware \
	 install_pakiety_QCA9377
	 
install_pakiety:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DEB_DIR)/
	$(INSTALL) 0755 $(DEB_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DEB_DIR)
install_pakiety_firmware:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DEB_DIR_FIRMWARE)/
	$(INSTALL) 0755 $(DEB_FILES_FIRMWARE) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DEB_DIR_FIRMWARE)
install_pakiety_QCA9377:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DEB_DIR_QCA9377)/
	$(INSTALL) 0755 $(DEB_FILES_QCA9377) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DEB_DIR_QCA9377)
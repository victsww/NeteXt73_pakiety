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

make: nothing_to_make
nothing_to_make:
	
	@echo -e '\033[1;32mNie będę budował NeteXt73 :)...\033[0m'
	
install: install_pakiety 
	 
	 $(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
	
install_pakiety:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DEB_DIR)/
	$(INSTALL) 0755 $(DEB_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DEB_DIR)


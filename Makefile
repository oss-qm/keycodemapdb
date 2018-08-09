
PREFIX     ?= /usr
DATADIR    ?= $(PREFIX)/share
DOCDIR     ?= $(DATADIR)/doc
APPDATADIR ?= $(DATADIR)/keycodemapdb
APPDOCDIR  ?= $(DOCDIR)/keycodemapdb
BINDIR     ?= $(PREFIX)/bin
INSTALL    ?= install

DATA_FILES = data/README data/keymaps.csv
DOC_FILES  = LICENSE.BSD LICENSE.GPL2 README
BIN_FILES  = tools/keymap-gen

all:
	@echo "nothing to do"

clean:
	@echo "nothing to do"

install:
	install -d $(DESTDIR)$(APPDATADIR) $(DESTDIR)$(BINDIR) $(DESTDIR)$(APPDOCDIR)
	install -m u=rw,go=r $(DATA_FILES)  -t $(DESTDIR)$(APPDATADIR)
	install -m u=rw,go=r $(DOC_FILES)   -t $(DESTDIR)$(APPDOCDIR)
	install -m u=rwx,go=rx $(BIN_FILES) -t $(DESTDIR)$(BINDIR)

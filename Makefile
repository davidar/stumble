INSTALL=install
MKDIR=mkdir

BINDIR=/usr/bin
DATADIR=/usr/share/stumble
SMDIR=$(shell kde-config --prefix)/share/apps/konqueror/servicemenus


install-stumble:
	$(MKDIR) -p $(DATADIR)
	$(INSTALL) -m 644 topics.csv lang.csv $(DATADIR)
	$(INSTALL) -m 755 stumble $(BINDIR)

install-kstumble: install-stumble
	$(INSTALL) -m 755 kstumble $(BINDIR)

install-kde: install-kstumble
	$(MKDIR) -p $(SMDIR)
	$(INSTALL) -m 644 kstumble.desktop $(SMDIR)


uninstall-stumble:
	-rm -rf $(DATADIR)
	-rm -f $(BINDIR)/stumble

uninstall-kstumble: uninstall-stumble
	-rm -f $(BINDIR)/kstumble

uninstall-kde: uninstall-kstumble
	-rm -f $(SMDIR)/kstumble.desktop

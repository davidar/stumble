INSTALL=install
MKDIR=mkdir

BINDIR=/usr/bin
DATADIR=/usr/share/stumble
SMDIR=/usr/share/apps/konqueror/servicemenus

install:
	$(MKDIR) -p $(DATADIR)
	$(INSTALL) -m 644 -D topics.csv lang.csv $(DATADIR)
	$(INSTALL) -m 755 stumble kstumble $(BINDIR)
	$(INSTALL) -m 644 kstumble.desktop $(SMDIR)

uninstall:
	-rm -rf $(DATADIR)
	-rm -f $(BINDIR)/stumble $(BINDIR)/kstumble $(SMDIR)/kstumble.desktop
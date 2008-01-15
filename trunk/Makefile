INSTALL=install
MKDIR=mkdir

BINDIR=/usr/bin
DATADIR=/usr/share/stumble
SMDIR=$(shell kde-config --prefix)/share/apps/konqueror/servicemenus

KDE4PREFIX=/usr/lib/kde4
SMDIR4=$(KDE4PREFIX)/share/kde4/services/ServiceMenus


install-stumble:
	$(MKDIR) -p $(DATADIR)
	$(INSTALL) -m 644 topics.csv lang.csv $(DATADIR)
	$(INSTALL) -m 755 stumble $(BINDIR)

install-kstumble: install-stumble
	$(INSTALL) -m 755 kstumble $(BINDIR)

install-kde: install-kstumble
	$(MKDIR) -p $(SMDIR)
	$(INSTALL) -m 644 kstumble.desktop $(SMDIR)

install-kde4: install-kstumble
	$(MKDIR) -p $(SMDIR4)
	$(INSTALL) -m 644 kstumble.desktop $(SMDIR4)


uninstall-stumble:
	-rm -rf $(DATADIR)
	-rm -f $(BINDIR)/stumble

uninstall-kstumble: uninstall-stumble
	-rm -f $(BINDIR)/kstumble

uninstall-kde: uninstall-kstumble
	-rm -f $(SMDIR)/kstumble.desktop

uninstall-kde4: uninstall-kstumble
	-rm -f $(SMDIR4)/kstumble.desktop

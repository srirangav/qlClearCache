# Makefile - Makefile for qlClearCache
# $Id: Makefile 1317 2013-05-17 01:24:43Z ranga $

PGM_NAME = qlclearcache
PGM_REL  = 0.1.0
WORKDIR  = work
FILES    = org.calalum.ranga.$(PGM_NAME).plist \
	   README.txt \
           LICENSE.txt \
           Makefile

all:
	@echo Nothing to do

tgz:
	/bin/rm -rf $(WORKDIR)
	/bin/mkdir -p $(WORKDIR)/$(PGM_NAME)-$(PGM_REL)
	/bin/cp $(FILES) $(WORKDIR)/$(PGM_NAME)-$(PGM_REL)
	cd $(WORKDIR) && \
        tar -cvf ../$(PGM_NAME)-$(PGM_REL).tar $(PGM_NAME)-$(PGM_REL)
	gzip $(PGM_NAME)-$(PGM_REL).tar
	/bin/mv $(PGM_NAME)-$(PGM_REL).tar.gz $(PGM_NAME)-$(PGM_REL).tgz

install:
	/bin/mkdir -p "$$HOME/Library/LaunchAgents/"
	/bin/cp org.calalum.ranga.$(PGM_NAME).plist \
           "$$HOME/Library/LaunchAgents/" && \
        /bin/chmod go-wx \
           "$$HOME/Library/LaunchAgents/org.calalum.ranga.$(PGM_NAME).plist" && \
	/bin/chmod 700 "$$HOME/Library/LaunchAgents/" && \
        /bin/launchctl load \
           "$$HOME/Library/LaunchAgents/org.calalum.ranga.$(PGM_NAME).plist"

clean:
	/bin/launchctl unload "org.calalum.ranga.$(PGM_NAME).plist"
	/bin/rm -rf *~ .*~ .DS_Store $(WORKDIR) $(PGM_NAME)*.tgz 


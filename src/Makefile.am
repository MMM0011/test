bin_PROGRAMS = helloworld

helloworld_SOURCES = main.c func.c header.h

clean-all:
	$(MAKE) clean
	$(RM) Makefile config.log config.status
	$(RM) -rf autom4te.cache
	$(RM) configure aclocal.m4
	$(RM) *.o
	$(RM) -rf helloworld .deps
	$(RM) Makefile.in
	$(RM) ChangeLog INSTALL AUTHORS NEWS README COPYING
	$(RM) install-sh depcomp missing compile

.PHONY: clean-all

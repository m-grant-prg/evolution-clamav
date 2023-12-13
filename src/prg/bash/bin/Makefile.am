#########################################################################
#									#
# Author: Copyright (C) 2020, 2021, 2023  Mark Grant			#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# Automake script file to generate evolution-clamav bindir scripts from	#
# source.								#
#									#
#########################################################################


evolution-clamav-scripts-location.sh: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
	chmod a+x $@
evolution-clamav-scripts-location.sh: \
	$(srcdir)/evolution-clamav-scripts-location.sh.in

bin_SCRIPTS = evolution-clamav-scripts-location.sh


EXTRA_DIST = $(srcdir)/evolution-clamav-scripts-location.sh.in


CLEANFILES = *.tmp evolution-clamav-scripts-location.sh


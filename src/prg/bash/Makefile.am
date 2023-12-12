#########################################################################
#									#
# Author: Copyright (C) 2020, 2021, 2023  Mark Grant			#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# Automake script file to generate evolution-clamav scripts from source.#
#									#
#########################################################################


clamscan-notify.sh evolution-clamav.sh evolution-clamavd.sh \
	evolution-clamav-scripts-location.sh: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
	chmod a+x $@
clamscan-notify.sh: $(srcdir)/clamscan-notify.sh.in
evolution-clamav.sh: $(srcdir)/evolution-clamav.sh.in
evolution-clamavd.sh: $(srcdir)/evolution-clamavd.sh.in
evolution-clamav-scripts-location.sh: \
	$(srcdir)/evolution-clamav-scripts-location.sh.in

bin_SCRIPTS = clamscan-notify.sh evolution-clamav.sh evolution-clamavd.sh \
	evolution-clamav-scripts-location.sh


EXTRA_DIST = $(srcdir)/clamscan-notify.sh.in $(srcdir)/evolution-clamav.sh.in \
	$(srcdir)/evolution-clamavd.sh.in \
	$(srcdir)/evolution-clamav-scripts-location.sh.in


CLEANFILES = *.tmp clamscan-notify.sh evolution-clamav.sh evolution-clamavd.sh \
	evolution-clamav-scripts-location.sh


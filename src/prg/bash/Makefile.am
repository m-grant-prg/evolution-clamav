#########################################################################
#									#
# Script ID: src/prg/bash/Makefile.am					#
# Author: Copyright (C) 2020, 2021  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# Automake script file to generate evolution-clamav scripts from source.#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 11/02/2020	MG	1.0.1	Initial version.			#
# 23/11/2021	MG	1.0.2	Tighten SPDX tag.			#
#									#
#########################################################################


clamscan-notify.sh evolution-clamav.sh evolution-clamavd.sh: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
	chmod a+x $@
clamscan-notify.sh: $(srcdir)/clamscan-notify.sh.in
evolution-clamav.sh: $(srcdir)/evolution-clamav.sh.in
evolution-clamavd.sh: $(srcdir)/evolution-clamavd.sh.in


bin_SCRIPTS = clamscan-notify.sh evolution-clamav.sh evolution-clamavd.sh


EXTRA_DIST = $(srcdir)/clamscan-notify.sh.in $(srcdir)/evolution-clamav.sh.in \
	$(srcdir)/evolution-clamavd.sh.in



CLEANFILES = *.tmp clamscan-notify.sh evolution-clamav.sh evolution-clamavd.sh


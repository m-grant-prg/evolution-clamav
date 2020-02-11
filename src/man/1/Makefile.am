#########################################################################
#									#
# Script ID: src/man/1/Makefile.am					#
# Author: Copyright (C) 2020  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
#									#
# Purpose:								#
# Automake script file to generate evolution-clamav manual pages from	#
# source.								#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 11/02/2020	MG	1.0.1	Initial version.			#
#									#
#########################################################################


clamscan-notify.sh.1 evolution-clamav.sh.1 evolution-clamavd.sh.1: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	$(edit) $(srcdir)/$(@F).man.in > $@.tmp
	targfile=$(@F);	\
	if [[ $$targfile == *"."* ]]; then \
		if [[ $${targfile##*.} == "" ]]; then \
			echo "Source file suffix used as section but empty."; \
			exit 1; \
		else \
			section=$${targfile##*.}; \
		fi; \
	else \
		echo "Source file suffix used as section but no dot & empty."; \
		exit 1; \
	fi; \
	txt2manwrap $(@F) $$section "evolution-clamav Manual" $@.tmp $@
	rm -f $@.tmp
clamscan-notify.sh.1: $(srcdir)/clamscan-notify.sh.1.man.in
evolution-clamav.sh.1: $(srcdir)/evolution-clamav.sh.1.man.in
evolution-clamavd.sh.1: $(srcdir)/evolution-clamavd.sh.1.man.in

man_MANS = clamscan-notify.sh.1 evolution-clamav.sh.1 evolution-clamavd.sh.1

EXTRA_DIST = $(srcdir)/clamscan-notify.sh.1.man.in \
	$(srcdir)/evolution-clamav.sh.1.man.in \
	$(srcdir)/evolution-clamavd.sh.1.man.in


CLEANFILES = *.tmp clamscan-notify.sh.1 evolution-clamav.sh.1 \
	evolution-clamavd.sh.1

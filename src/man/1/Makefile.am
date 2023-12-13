#########################################################################
#									#
# Author: Copyright (C) 2020, 2021, 2023  Mark Grant			#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# Automake script file to generate evolution-clamav manual pages from	#
# source.								#
#									#
#########################################################################


evolution-clamav-scripts-location.1: Makefile
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
	txt2manwrap $(@F) $$section "" $@.tmp $@
	rm -f $@.tmp
evolution-clamav-scripts-location.1: \
	$(srcdir)/evolution-clamav-scripts-location.1.man.in

man_MANS = evolution-clamav-scripts-location.1

EXTRA_DIST = $(srcdir)/evolution-clamav-scripts-location.1.man.in

CLEANFILES = *.tmp evolution-clamav-scripts-location.1


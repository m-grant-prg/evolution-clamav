#!/bin/bash

#########################################################################################
#											#
#	ClamAV for Evolution; Version 0.1.0						#
#	Copyright (c) 2011 Christian Brenner. All rights reserved.			#
#	Copyright (c) Fred Blaise. All rights reserved.					#
#											#
#	This program is free software: you can redistribute it and/or modify it		#
#	under the terms of the GNU General Public License as published by the		#
#	Free Software Foundation, either version 3 of the License, or (at your		#
#	option) any later version.							#
#											#
#	This program is distributed in the hope that it will be useful, but		#
#	WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY	#
#	or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License	#
#	for more details.								#
#											#
#	You should have received a copy of the GNU General Public License along		#
#	with this program. If not, see <http://www.gnu.org/licenses/>. 			#
#											#
#########################################################################################

FILE=/tmp/$$_outclam.tmp
clamscan --no-summary --detect-pua=yes --detect-structured=yes --phishing-sigs=yes --scan-pdf=yes --official-db-only=yes - 1>$FILE

if [ $? -eq 1 ]; then
	STRING=$(grep "FOUND" $FILE |cut -d: -f2)
	notify-send --urgency=critical --category=email.bounced --icon=/usr/share/icons/gnome/scalable/status/dialog-warning.svg "ClamAV: Virus detected" "$STRING"
	exit 1
fi
exit 0

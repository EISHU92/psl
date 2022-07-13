#!/bin/bash
if [ $(id -u) = "0" ]; then
	if [ -f /usr/bin/pil ]; then
		if [ -f $PWD/urls.db ]; then
			if [ -f /pil/urls.db ]; then
				echo -en "Updating URLS.DB..."
				sleep 0.11
				mv -r /pil/urls.db /pil/urls.db.$RANDOM
				cp -r $PWD/urls.db /pil/urls.db
				echo -en "\rUpdated!                   "
				echo
				echo
			else
				echo -en "Pil maybe dont support PPIL, ignoring..."
				sleep 0.15
				echo -en "\rUpdating URLS.DB...                               "
				mv -r /pil/urls.db /pil/urls.db.$RANDOM
				cp -r $PWD/urls.db /pil/urls.db
				sleep 0.1
				echo "\rUpdated!                                                     "
				echo
				echo
			fi
		else
		echo -en "$PWD/urls.db not found."
		sleep 0.1
		echo -en "\rAborting...                   "
		echo
		echo
		fi
	else
	echo -en "PIL not installed."
	sleep 0.1
	echo -en "\rAborting..."
	fi
else
echo -en "You must be Root to do this action"
echo -en "To execute this program with root put: $ sudo bash /path/to/the/file.program"
echo -en "                                                                               "
echo
echo
fi
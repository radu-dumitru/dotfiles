#!/bin/bash

# Check for updates
updates=$(apt list --upgradable 2>/dev/null | grep -c "upgradable")

# Display the number of updates, or 0 if none
if [ "$updates" -gt 0 ]; then
	echo " $updates"
fi


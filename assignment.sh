#!/bin/bash
set -o history
while true;
do
	echo "1. List files"
	echo "2. Show free disk space"
	echo "3. Show system path"
	echo "4. Display command history"
	echo "5. Backup files"
	echo "6. Exit"
	
	read input
	
	case $input in
		1) echo "List of files"; ls; echo;;
		2) echo "Free disk space"; df -h; echo;;
		3) echo "System path"; echo $PATH; echo;;
		4) echo "Command history"; history; echo;;
		5) echo "Backup"; read directory; mkdir /workspaces/OperatingSystems_Year1/backup; cd $directory; cp -r $directory /workspaces/OperatingSystems_Year1/backup; ls -a; echo;;
		6) echo "Exit"; exit 1; echo;;
	esac
done

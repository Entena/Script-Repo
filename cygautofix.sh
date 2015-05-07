#This script iterates through all your files in the autocomplete dir
#/etc/bash_completion and then names them to .bak if the commands don't exist
for i in $(ls|grep -v /); do type $i >/dev/null 2>&1 || mv $i $i.bak; done

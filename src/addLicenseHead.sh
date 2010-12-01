#!/bin/bash
#
# This script adds the GPLv3 header to all files within
# the directory passed as parameter.
#
# Author: Arturo Díaz-Almagro
# Date: December, 1st 2010
# Version: 1.0
#

if [ $# != 3 ]; 
then
	echo "Usage: addLicenseHead <license_header_file> <directory> <file_extension>"
	exit
fi

license_file=$1
root_dir=$2
file_exten=$3


#find $root_dir -type f -print0 | xargs -0 -I file cat header.gpl file > file.new

IFS=$'\012'

for file in $root_dir/*.$file_exten; 
do
	cat "$license_file" "$file" > "$file.new" 
	mv "$file.new" "$file"
done

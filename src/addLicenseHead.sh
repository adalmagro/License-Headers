#!/bin/bash
#
# Copyright 2010 Arturo Díaz-Almagro
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#
# You should have received a copy of the GNU General Public License
# along with this project.  If not, see <http://www.gnu.org/licenses/>.


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

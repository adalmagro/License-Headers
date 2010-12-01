#!/bin/bash
#
# config_header.sh
#
# Copyright 2010 Arturo Díaz-Almagro
#
# This file is part of License-Headers
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
# along with License-Headers.  If not, see <http://www.gnu.org/licenses/>.
#

# This script replaces the values of the license header with the
# corresponding to the year, owner, project, etc...
#
# Author: Arturo Díaz-Almagro
# Date: December, 1st 2010
# Version: 1.0
#

if [ $# != 3 ];
then
	echo "Usage: $0 <file_name> <header_file> <values_file>"
	exit
fi

# Include values file
. $3

header_file=$2

sed -e "s|{FILE_NAME}|$1|g" -e "s|{OWNER}|$OWNER|g" -e "s|{PROJECT_NAME}|$PROJECT_NAME|g" -e "s|{YEAR}|$YEAR|g" $header_file
exit

#!/bin/bash

#    Copyright 2020 Tuomas Liinamaa <tlii@iki.fi>, https://surosy.com

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Database credentials
 user=""
 password=""
 host=""
 db_name=""

# CRM Location. Do not add "/" to the end.
 crm_path=""

 mysql_bin="/usr/bin/mysql"

## No editing necessary under this.

rm -r $crm_path/modules/AOD_Index/Index/Index
$mysql_bin -u $user -p$password $db_name -h $host -e "DELETE FROM aod_index; DELETE FROM aod_indexevent;"

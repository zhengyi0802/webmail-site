#!/bin/bash -x
DB_USER='mailuser';
DB_PASSWD='mail1234';
DB_NAME='mailserver';
DOMAIN=$1

#mysql commands
mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME <<EOF
UPDATE virtual_domains SET active = false WHERE name="$DOMAIN";
EOF


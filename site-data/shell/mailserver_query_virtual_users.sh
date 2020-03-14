#!/bin/bash -x
DB_USER='mailuser';
DB_PASSWD='mail1234';
DB_NAME='mailserver';

#mysql commands
mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME <<EOF
SELECT * FROM virtual_users WHERE active = true;
EOF


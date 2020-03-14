#!/bin/bash -x
DB_USER='mailuser';
DB_PASSWD='mail1234';
DB_NAME='mailserver';
USERID=$1
NEWPASS=$2
# echo "UPDATE virtual_users SET password=ENCRYPT('$NEWPASS', CONCAT('\$6\$', SUBSTRING(SHA(RAND()), -16))) WHERE email='$USERID';"

#mysql commands
mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME <<EOF
UPDATE virtual_users SET password=ENCRYPT('$NEWPASS', CONCAT('\$6\$', SUBSTRING(SHA(RAND()), -16))) WHERE email="$USERID";
EOF


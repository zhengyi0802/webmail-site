#!/bin/bash -x
DB_USER='mailuser';
DB_PASSWD='mail1234';
DB_NAME='mailserver';
EMAIL=$1;
PASS=$2;

#mysql commands
mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME <<EOF
INSERT INTO virtual_users (\`domain_id\`, \`password\`, \`email\`) 
VALUES ("1", ENCRYPT('$PASS', CONCAT('\$6\$', SUBSTRING(SHA(RAND()), -16))), "$EMAIL");
EOF


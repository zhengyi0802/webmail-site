#!/bin/bash

certbot renew --quiet --agree-tos --post-hook "systemctl restart dovecot"



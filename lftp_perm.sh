#!/bin/bash
lftp <<EOF
# the next 3 lines put you in ftpes mode. Uncomment if you are having trouble connecting.
#set ftp:ssl-allow no
#set ftp:passive-mode true
#set ftp:list-options -a
open -u [user],[password] [host]
# changing file permissions starts now...
chmod 777 /public_html/images/cache/thanos.jpeg
EOF

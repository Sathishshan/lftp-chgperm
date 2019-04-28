#!/bin/bash
lftp <<EOF
# the next 3 lines put you in ftpes mode. Uncomment if you are having trouble connecting.
#set ftp:ssl-allow no
#set ftp:passive-mode true
#set ftp:list-options -a
open -u [user],[password] [host]
chmod -R 0777 /public_html/images/cache
EOF

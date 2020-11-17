#!/bin/bash
/usr/local/bin/direwolf -T %H:%M:%S -a 0 -t 0 -c /etc/direwolf/direwolf.conf -L /var/log/direwolf/direwolf.log | frontail --url-path /direwolf --disable-usage-stats --ui-highlight-preset /etc/direwolf/direwolf.json -t dark --ui-highlight -n 60 -

# [igate.nayr.net](https://igate.nayr.net) - source
Mostly a backup or the above site, for educational purposes.

Components:
 * /direwolf - DireWolf Config & SBEACON Patch 
 * /frontail - Tweaked for display purposes, mostly web
 * /grafana - Dashboard JSON Export
 * /telegraf - Config & Simple Stats Scripts

How it works:
 * Patch for Direwolf logs stats to /tmp/dw-logs.txt when SBEACON's are triggered
 * Telegraf scrapes dw-logs.txt, and direwolf log file to inject into InfluxDB
 * Direwolf's console is re-directed to a modified NodeJS Frontail 
 * Its all tied together with Grafana Dashboard.
 * some nginx proxy and web stuff thats beyond this scope

Install-ish (Debian)
 * adduser direwolf
 * su - direwolf
 * git pull direwolf (1.4)
 * make install direwolf
 * Place:
  * /etc/direwolf/direwolf.conf
  * /etc/direwolf/direwolf.json
  * /etc/systemd/system/direwolf.service
  * /etc/telegraf/telegraf.d/direwolf.conf
  * /usr/local/bin/start-dw.sh
  * /usr/local/bin/dw-stats*
 * install nodejs & npm
 * npm install -g frontail
 * diff supplied module folder against stock and tweak as you want
 * install & configure telegraf (setup InfluxDB/Grafana somewhere) 
 * configure direwolf approprately
 * start direwolf service
 * connect to IP:9001 and see if you see the console
 * see if stats start dumping to /tmp/dw-logs.txt
 * see if stats showing up in Grafana
 * import and customize the grafana json
 * so much more I'm sure I forgot.. good luck!

73 N4YRE

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


73 N4YRE

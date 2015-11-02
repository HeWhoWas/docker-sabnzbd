#!/bin/bash
docker run -d -h nzb.hewhowas.com -v /opt/config/sabnzbd:/config -v /home/ben/Downloads:/downloads -p 8081:8080 --restart=always timhaak/sabnzbd

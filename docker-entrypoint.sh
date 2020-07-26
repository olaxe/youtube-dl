#!/bin/ash
echo 'Container YouTube-dl is starting'
echo 'Upgrades if needed'
apk --no-cache update && apk --no-cache upgrade
pip3 install --upgrade pip && pip3 install --upgrade youtube-dl
echo ''

echo 'List of information about main products used:'
cat /etc/os-release
uname -a
youtube-dl --version
echo ''

echo 'infinite waiting so the container can be used at any time to launch YouTube-dl operations'
while true; do sleep 100; done

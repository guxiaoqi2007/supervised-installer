#!/bin/bash
tmp=$(find /var/lib/docker/overlay2 -path '*diff/usr/src/supervisor/supervisor/updater.py')
echo "$tmp"
sed -i "s/= data\[\"images\"\]\[\"core\"\]/= str(data[\"images\"][\"core\"]).replace(\'.io\', \'.dockerproxy.com\')/g" $tmp
sed -i "s/= data\[\"images\"\]\[\"supervisor\"\]/= str(data[\"images\"][\"supervisor\"]).replace(\'.io\', \'.dockerproxy.com\')/g" $tmp
sed -i "s/= data\[\"images\"\]\[\"audio\"\]/= str(data[\"images\"][\"audio\"]).replace(\'.io\', \'.dockerproxy.com\')/g" $tmp
sed -i "s/= data\[\"images\"\]\[\"cli\"\]/= str(data[\"images\"][\"cli\"]).replace(\'.io\', \'.dockerproxy.com\')/g" $tmp
sed -i "s/= data\[\"images\"\]\[\"dns\"\]/= str(data[\"images\"][\"dns\"]).replace(\'.io\', \'.dockerproxy.com\')/g" $tmp
sed -i "s/= data\[\"images\"\]\[\"observer\"\]/= str(data[\"images\"][\"observer\"]).replace(\'.io\', \'.dockerproxy.com\')/g" $tmp
sed -i "s/= data\[\"images\"\]\[\"multicast\"\]/= str(data[\"images\"][\"multicast\"]).replace(\'.io\', \'.dockerproxy.com\')/g" $tmp
#sed -i "s/.io/.dockerproxy.com/g" /usr/share/hassio/addons/git/a0d7b954/.addons.yml

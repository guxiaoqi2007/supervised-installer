#!/bin/bash
tmp=$(find /var/lib/docker/overlay2 -path '*diff/usr/src/supervisor/supervisor/const.py')
echo "$tmp"
if [ -n "$tmp" ]; then
sed -i 's/URL_HASSIO_VERSION = \"https:\/\/version.home-assistant.io\/{channel}.json\"/URL_HASSIO_VERSION = \"http:\/\/guxiaoqi.dynv6.net:888\/{channel}.json\"/' $tmp
fi
#sed -i "s/= data\[\"images\"\]\[\"core\"\]/= str(data[\"images\"][\"core\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"supervisor\"\]/= str(data[\"images\"][\"supervisor\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"audio\"\]/= str(data[\"images\"][\"audio\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"cli\"\]/= str(data[\"images\"][\"cli\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"dns\"\]/= str(data[\"images\"][\"dns\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"observer\"\]/= str(data[\"images\"][\"observer\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"multicast\"\]/= str(data[\"images\"][\"multicast\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/.io/.dockerproxy.com/g" /usr/share/hassio/addons/git/a0d7b954/.addons.yml


  GNU nano 5.4                                /usr/sbin/cupdate.sh                                         
#!/bin/bash
tmp=$(find /var/lib/docker/overlay2 -path '*diff/usr/src/supervisor/supervisor/updater.py')
echo "$tmp"
sed -i "s/= data\[\"images\"\]\[\"core\"\]/= str(data[\"images\"][\"core\"]).replace(\'.io\', \'.dockerpro>
sed -i "s/= data\[\"images\"\]\[\"supervisor\"\]/= str(data[\"images\"][\"supervisor\"]).replace(\'.io\', >
sed -i "s/= data\[\"images\"\]\[\"audio\"\]/= str(data[\"images\"][\"audio\"]).replace(\'.io\', \'.dockerp>
sed -i "s/= data\[\"images\"\]\[\"cli\"\]/= str(data[\"images\"][\"cli\"]).replace(\'.io\', \'.dockerproxy>
sed -i "s/= data\[\"images\"\]\[\"dns\"\]/= str(data[\"images\"][\"dns\"]).replace(\'.io\', \'.dockerproxy>
sed -i "s/= data\[\"images\"\]\[\"observer\"\]/= str(data[\"images\"][\"observer\"]).replace(\'.io\', \'.d>
sed -i "s/= data\[\"images\"\]\[\"multicast\"\]/= str(data[\"images\"][\"multicast\"]).replace(\'.io\', \'>
#sed -i "s/ghcr.io/ghcr.dockerproxy.com/g" /usr/share/hassio/addons/git/a0d7b954/.addons.yml

#!/bin/bash
tmp=$(find /var/lib/docker/overlay2 -path '*diff/usr/src/supervisor/supervisor/const.py')
echo "$tmp"
if [ -n "$tmp" ]; then
sed -i 's/URL_HASSIO_VERSION = \"https:\/\/version.home-assistant.io\/{channel}.json\"/URL_HASSIO_VERSION = \"http:\/\/guxiaoqi.dynv6.net:888\/{channel}.json\"/' $tmp
fi
tmp2=$(find /var/lib/docker/overlay2 -path '*diff/usr/src/supervisor/supervisor/homeassistant/module.py')
echo "$tmp2"
if [ -n "$tmp2" ]; then
sed -i 's|ghcr.io/home-assistant/|registry.cn-hangzhou.aliyuncs.com/gxq2007/|' $tmp2
fi
#sed -i "s/= data\[\"images\"\]\[\"core\"\]/= str(data[\"images\"][\"core\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"supervisor\"\]/= str(data[\"images\"][\"supervisor\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"audio\"\]/= str(data[\"images\"][\"audio\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"cli\"\]/= str(data[\"images\"][\"cli\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"dns\"\]/= str(data[\"images\"][\"dns\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"observer\"\]/= str(data[\"images\"][\"observer\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/= data\[\"images\"\]\[\"multicast\"\]/= str(data[\"images\"][\"multicast\"]).replace(\'.io\', \'.nju.edu.cn\')/g" $tmp
#sed -i "s/.io/.dockerproxy.com/g" /usr/share/hassio/addons/git/a0d7b954/.addons.yml

# 查找文件
file_path=$(find /var/lib/docker/overlay2 -path '*diff/usr/src/supervisor/supervisor/docker/interface.py' -print -quit)
file_path1=$(find /var/lib/docker/overlay2 -path '*diff/usr/src/supervisor/supervisor/docker/manager.py' -print -quit)
# 定义行号和要插入的文本
line_number=234
line_number1=192
insert_text='        image = image.replace("homeassistant", "registry.cn-hangzhou.aliyuncs.com/gxq2007", 1)'

# 检查文件是否存在
if [ -n "$file_path" ]; then
    if ! grep -qF -- "$insert_text" "$file_path"; then
        sed -i "${line_number}i\\${insert_text}" "$file_path"
        echo "已成功插入到第${line_number}行。"
    else
        echo "第${line_number}行已包含相同的文本，无需插入。"
    fi
else
    echo "未找到文件。"
fi

if [ -n "$file_path1" ]; then
    if ! grep -qF -- "$insert_text" "$file_path1"; then
        sed -i "${line_number1}i\\${insert_text}" "$file_path1"
        echo "已成功插入到第${line_number1}行。"
    else
        echo "第${line_number1}行已包含相同的文本，无需插入。"
    fi
else
    echo "未找到文件。"
fi





#!/bin/sh

devicecode=Dragon
sourceforge=https://sourceforge.net/projects/drg-sprout/files/EvolutionX

datetime=$(grep ro\.build\.date\.utc system/build.prop | cut -d= -f2)
version=android-10.0
romtype=UNOFFICIAL
zipname=$(echo EvolutionX**.zip)
url=$sourceforge/$zipname/download
id=$(cat "$zipname.md5sum" | cut -d' ' -f1)
echo "{\n\"response\": [\n{\n   \"datetime\": \"$datetime\",\n   \"filename\": \"$zipname\",\n   \"id\": \"$id\",\n   \"romtype\": \"UNOFFICIAL\",\n   \"size\": $(stat -c%s EvolutionX**.zip),\n   \"url\": \"$url\",\n   \"version\": \"$version\"\n}\n]\n}" > $zipname.json


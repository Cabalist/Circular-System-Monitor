#!/usr/bin/env bash
curl -s 'http://api.openweathermap.org/data/2.5/weather?q=Amblève&APPID=d4136a2afe10824aad3e79e7d228f941&units=metric' | jq '.weather[].icon' | sed -e 's/"//g' | sed -e 's/^/http:\/\/openweathermap.org\/img\/w\//g' | sed -e 's/$/.png/g' | xargs curl -s -o /Volumes/ramdisk/weather.png

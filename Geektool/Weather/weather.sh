#!/usr/bin/env bash
APPID="d4136a2afe10824aad3e79e7d228f941&"
CITY="Ambleve"
W=`curl -s "http://api.openweathermap.org/data/2.5/weather?units=metric&q="$CITY"&APPID="$APPID`
S=`(echo "$W"  | /usr/local/bin/jq ".name" | sed -e 's/"//g')`
C=`(echo "$W"  | /usr/local/bin/jq ".sys.country" | sed -e 's/"//g')`
F=`(echo "$W"  | /usr/local/bin/jq ".weather[].description" | sed -e 's/"//g')`
T=`(echo "$W"  | /usr/local/bin/jq ".main.temp" | sed -e "s/$/\°C/g")`
H=`(echo "$W"  | /usr/local/bin/jq ".main.temp_max" | sed -e "s/$/\°C/g")`
L=`(echo "$W"  | /usr/local/bin/jq ".main.temp_min" | sed -e "s/$/\°C/g")`
D=`(echo "$W"  | /usr/local/bin/jq ".main.humidity" | sed -e 's/$/%/g')`

echo "Amel"
echo $T " " $F " "
echo "↑"$H "-" "↓"$L
echo "$D  Luftfeuchtigkeit"


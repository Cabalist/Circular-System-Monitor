# Circular-System-Monitor
Circular System Monitor Disk Ram Cpu Battery Nettraffic

![Screenshot](Circular System Monitor.png?raw=true)

##PREPARATIONS

1. Install font Arcdopi04.ttf
2. This shouldn't be necessary I think,  but In case of problems, make all the sh scripts executable.
3. Open "cachestoram.sh" with an editor and adapt the path to your "Geektool" folder. Read my comments in the sh file.
4. Open "Start.scpt" with ScriptEditor and again, adapt the path to your "Geektool" folder.   
**IMPORTANT**: Export this file as an app: "Save As..." from the file menu in AppleScript Editor and set the "File Format" to application. Remember the path. This creates an app called "Start".
5. Add "Start" to your login items.  Instructions can be found here: http://www.howtogeek.com/206178/mac-os-x-change-which-apps-start-automatically-at-login/
6. Logout or reboot to check that ramdisk gets created and populated with the files from your Geektools folder.

##SETTING UP GEEKTOOL
In your Geektool folder, open the folder "Glet" and activate the ones you're interested in. You may want to read the file "Posotionsarcs" to install the geeklets in the correct order and place them where they need to be. This is also useful when things get messed up.

##ADDITIONAL STEPS / ADAPT GEEKLETS:
A) Openweather: This geeklet requires some additional work: 
1. Install "homebrew". Instructions can be found here: https://coolestguidesontheplanet.com/installing-homebrew-on-os-x-el-capitan-10-11-package-manager-for-unix-apps/
2. Once this is done, open the terminal using  "brew install jq"
3. Downlod and extract / open  "city.list.json" from http://bulk.openweathermap.org/sample/ to find your location. Copy your location name. Open the folder "Weather" in your Geektool folder and replace my location (the location name after CITY; in my case "Ambleve") with yours in the two sh scripts (weather.sh / weather2.sh). You may also want to change Celsius to Fahrenheit and of course replace the name of my location (AMEL) with yours.
4. **IMPORTANT**: Fetching your weather icon does not work from whithin geektool. I don't know why. Everything works fine when running weather2.sh manually from a terminal before starting geektool. Here is a workaround:
Open a terminal and insert the following code:
nano .bash_profile
In that file we need:
alias weather='sh /Volumes/ramdisk/Geektool/Weather/weather2.sh'

B) Network traffic geeklets
To be honest, monitoring download / upload speeds with an arc doesn't make much sense, because it's hard to tell which data transfer rate represents 100% of your bandwidth but arcs look nice!!! That's why you have to adapt a specific divider to your needs in Landownarc, Lanuparc, Wlandownarc Wlanuparc.   

Let me explain: The first few lines for Landownarc look like this: 
```
LANDOWN=`tail -1 /Volumes/ramdisk/landown.txt | awk '{print "X"int(($1)/25)"X"}' | sed 's/\%//'`
```
I know that my maximum bandwidth does rarely exceed a sluggish 1MB/s. So I need to divide this number by a number higher than 20. I used 25 to have some scope. Play with the dividers on the fly so that the arcs never hit 100% to avoid strange behaviour.

##ACKNOWLEDGMENTS / CREDITS

1. Disk / Ram / Battery are based on d13t's work.  
http://www.macosxtips.co.uk/geeklets/system/disk-capacity-meter/
2. For the other arcs credits go to JimmyBollox  
http://www.macosxtips.co.uk/geeklets/system/system-info-circular-graphics/
3. OpenWeather: dr_selump and ejleon  
http://www.macosxtips.co.uk/geeklets/weather/openweathermap-geeklet-inspired-by-ejleon/
4. Icons: JimmyBollox  
http://www.gentleface.com/free_icon_set.html
5. cachestoram.sh: nischu7  
https://gist.github.com/nischu7/7194165

## NOTES / READ THIS IF YOUR INTERESTED

1. I had to use a ramdisk to avoid problems with paths and to avoid constant reading and writing of .png files to and fro the ssd.
2. The arcs that need constant refreshing (CPU, the 4 nettraffic glets) don't work with pngs. They use my own arc font instead and are more precise and not taxing on the system. The png method creates nicer looking arcs however. So I used it for Ram, Disk and Battery. These gets get refreshed every 60 seconds only, so no problem.
3. My code may seem weird at times. This is partly due to a lack of programming skills for sure.  However, I had to resort to sh scripts here and there mainly because shell commands don't always work the way they work in a real shell within applescript or geektool. Also rounding numbers and getting rid of decimals to create arcs made me resort to writing temporary files to the ramdisk and feeding them back into applescript.
4. I'd be very happy for any suggestions that could clean my code.

ENJOY!!!

dopi04     

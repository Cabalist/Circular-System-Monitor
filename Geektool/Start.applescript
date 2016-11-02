-- @d13t
-- 110923

-- Inspired by & adapted script from midnighttokerkate's Circle Volume Indicator
-- http://www.macosxtips.co.uk/geeklets/system/circle-volume-indicator/

-- In GeekTool/NerdTool set up shell geeklet with: osascript /Users/d/Documents/GeekTool/DiskCapacityMeter/DCM.scpt
-- In GeekTool/NerdTool set up  image geeklet with image: file://localhost/Users/d/Documents/GeekTool/DiskCapacityMeter/temp.png
-- Set refresh rate to what you like, I prefer 3600 seconds

on run
	-- Set the path to the directory of the DiskCapacityMeter folder
	-- For example: "/Users/dominik/Dropbox/Mac/Geektool/DiskCapacityMeter/"
	do shell script "sh /Users/dominik/Dropbox/Mac/Geektool/cachestoram.sh"
	delay 1
	do shell script "chflags hidden /Volumes/ramdisk"
	do shell script "defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
	
	--do shell script "sh /Volumes/ramdisk/Geektool/cpu.sh"
	tell application "Terminal"
		do script "wetter"
	end tell
	delay 1.5
	tell application "Terminal"
		quit
	end tell
	do shell script "open -g /Applications/TotalTerminal.app"
	set pathName to "/Volumes/ramdisk/Geektool/DiskCapacityMeter"
	set pathName2 to "/Volumes/ramdisk"
	
	-- df -hl | grep 'disk0s2' | awk '{sub(/%/, "");print $5}'
	-- Substitute % with ""
	set usedSpace to (do shell script "df -hl | grep 'disk0s2' | awk '{sub(/%/, \"\");print $5}'") as integer
	
	-- Getting the rounded number
	set theNumber to (round (usedSpace / 5)) * 5
	
	-- Replacing the image
	do shell script ("cp " & pathName & "/img/" & theNumber & ".png " & pathName2 & "/disk.png")
	
	set pathName3 to "/Volumes/ramdisk/Geektool/RAM"
	set pathName4 to "/Volumes/ramdisk"
	set usedRam to (do shell script "memory_pressure | awk '/System-wide memory free/ {sub(/%/, \"\");print $5}'") as integer
	
	-- Getting the rounded number
	set theNumber2 to (round (usedRam / 5)) * 5
	
	-- Replacing the image
	do shell script ("cp " & pathName & "/img/" & theNumber2 & ".png " & pathName2 & "/ram.png")
	delay 0.5
	do shell script "sh /Volumes/ramdisk/Geektool/batt.sh"
	delay 2
	set pathName6 to "/Volumes/ramdisk"
	set pathName5 to "/Volumes/ramdisk/Geektool/Batt"
	-- df -hl | grep 'disk0s2' | awk '{sub(/%/, "");print $5}'
	-- Substitute % with ""
	set Battery to (do shell script "tail -1 /Volumes/ramdisk/bat2") as integer
	
	-- Getting the rounded number
	set theNumber3 to (round (Battery / 5)) * 5
	
	-- Replacing the image
	do shell script ("cp " & pathName5 & "/img/" & theNumber3 & ".png " & pathName6 & "/batt.png")
	delay 1
	do shell script "open -g '/Applications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app'"
end run


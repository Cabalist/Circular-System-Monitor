-- Inspired by & adapted script from midnighttokerkate's Circle Volume Indicator
-- http://www.macosxtips.co.uk/geeklets/system/circle-volume-indicator/

on run
	-- Set the path to the directory of the DiskCapacityMeter folder
	set pathName to "/Volumes/ramdisk/Geektool/DiskCapacityMeter"
	set pathName2 to "/Volumes/ramdisk"
	
	-- df -hl | grep 'disk0s2' | awk '{sub(/%/, "");print $5}'
	-- Substitute % with ""
	set usedSpace to (do shell script "df -hl | grep 'disk0s2' | awk '{sub(/%/, \"\");print $5}'") as integer
	
	-- Getting the rounded number
	set theNumber to (round (usedSpace / 5)) * 5
	
	-- Replacing the image
	do shell script ("cp " & pathName & "/img/" & theNumber & ".png " & pathName2 & "/disk.png")
	
	--Freeram
	set pathName3 to "/Volumes/ramdisk/Geektool/RAM"
	set pathName4 to "/Volumes/ramdisk"
	set usedRam to (do shell script "memory_pressure | awk '/System-wide memory free/ {sub(/%/, \"\");print $5}'") as integer
	
	-- Getting the rounded number
	set theNumber2 to (round (usedRam / 5)) * 5
	
	-- Replacing the image
	do shell script ("cp " & pathName & "/img/" & theNumber2 & ".png " & pathName2 & "/ram.png")
	
	--Battery
	set pathName6 to "/Volumes/ramdisk"
	set pathName5 to "/Volumes/ramdisk/Geektool/Batt"
	set Battery to (do shell script "tail -1 /Volumes/ramdisk/bat2") as integer
	
	-- Getting the rounded number
	set theNumber3 to (round (Battery / 5)) * 5
	
	-- Replacing the image
	do shell script ("cp " & pathName5 & "/img/" & theNumber3 & ".png " & pathName6 & "/batt.png")
	
end run


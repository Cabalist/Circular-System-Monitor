#!/usr/bin/env bash
#creates ramdisk with the size of 536MB. Adapt it to your liking
RD=ramdisk
if [ ! -e "/Volumes/$RD" ];  then
    diskutil erasevolume HFS+ "ramdisk" `hdiutil attach -nomount ram://1048576`
fi

#All the Geektool files get copied to the ramdisk. 
sleep 1
#Adapt the path to where you extracted the Geektool.zip and where all the files are located
cp -r /Users/YOURNAME/YOURPATH/Geektool /Volumes/ramdisk
#example: cp -r /Users/fred/Documents/Geektool /Volumes/ramdisk

#the following code is optional. It copies some app caches to your ramdisk to take full advantage of it. You can delete the bits you don’t need or comment them out using „#“

sleep 2

CACHEDIR="/Volumes/ramdisk"

# Chrome Cache
/bin/rm -rvf ~/Library/Caches/Google/Chrome/*
/bin/mkdir -pv $CACHEDIR/Google/Chrome/Default
/bin/ln -v -s $CACHEDIR/Google/Chrome/Default ~/Library/Caches/Google/Chrome/Default

#Chromium Cache
/bin/rm -rvf ~/Library/Caches/Chromium/*
/bin/mkdir -pv $CACHEDIR/Chromium/Default
/bin/ln -v -s $CACHEDIR/Chromium/Default ~/Library/Caches/Chromium/Default

# Chrome Canary Cache
/bin/rm -rvf ~/Library/Caches/Google/Chrome\ Canary/*
/bin/mkdir -pv $CACHEDIR/Google/Chrome\ Canary/Default
/bin/ln -v -s $CACHEDIR/Google/Chrome\ Canary/Default ~/Library/Caches/Google/Chrome\ Canary/Default

# Safari Cache
/bin/rm -rvf ~/Library/Caches/com.apple.Safari
/bin/mkdir -pv $CACHEDIR/Apple/Safari
/bin/ln -v -s $CACHEDIR/Apple/Safari ~/Library/Caches/com.apple.Safari

# iTunes Cache
/bin/rm -rvf ~/Library/Caches/com.apple.iTunes
/bin/mkdir -pv $CACHEDIR/Apple/iTunes
/bin/ln -v -s $CACHEDIR/Apple/iTunes ~/Library/Caches/com.apple.iTunes

# Spotify Cache
/bin/rm -rvf ~/Library/Caches/com.spotify.client
/bin/mkdir -pv $CACHEDIR/Spotify
/bin/ln -v -s $CACHEDIR/Spotify ~/Library/Caches/com.spotify.client

#/usr/bin/chflags hidden /Volumes/ramdisk #Hide RamDisk directory
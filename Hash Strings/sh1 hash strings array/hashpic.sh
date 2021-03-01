#!/usr/bin/bash

#Generate a hash string for all week 6 board Images and store the file name and hash string inside a text file.

#this script generates a md5 hash string for all images.

function GetImages(){
	FILES=`cd Week_6_Board_Images|ls -1|head -100`
}


function Hashimages(){
	local COUNT=1
	for FILE in $@
	do
		md5sum $FILE >> array_md5_hash_strings.txt
		((COUNT++))
	done
}

GetImages
Hashimages $FILES

exit 0
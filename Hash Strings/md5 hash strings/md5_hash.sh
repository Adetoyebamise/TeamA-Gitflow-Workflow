#!/usr/bin/bash

#Generate a hash string for all week 6 board Images and store the file name and hash string inside a text file.

#this script generates a md5 hash string for all images.

md5sum Monday_Board_Image.jpeg > md5_hash_strings.txt

md5sum Tuesday_Board_Image.jpeg >> md5_hash_strings.txt

md5sum Wednesday_Board_Image.jpeg >> md5_hash_strings.txt

md5sum Thursday_Board_Image.jpeg >> md5_hash_strings.txt

md5sum Friday_Board_Image.jpeg >> md5_hash_strings.txt

exit 0
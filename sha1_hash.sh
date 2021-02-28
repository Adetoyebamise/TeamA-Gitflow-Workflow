#!/usr/bin/bash

#Generate a hash string for all week 6 board Images and store the file name and hash string inside a text file.

#this script generates a sha1 hash string for all images.

sha1sum Monday_Board_Image.jpeg > result_for_sha1.txt

sha1sum Tuesday_Board_Image.jpeg >> result_for_sha1.txt

sha1sum Wednesday_Board_Image.jpeg >> result_for_sha1.txt

sha1sum Thursday_Board_Image.jpeg >> result_for_sha1.txt

sha1sum Friday_Board_Image.jpeg >> result_for_sha1.txt
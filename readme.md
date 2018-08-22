# Sneaky Camera, a webcam automated image taker + emailer 
## Purpose
* Just to see if it could be done -- it can! 📸
* Script does not require sudo or administrative privileges 
* Inspired by constantly seeing folks block their computer webcams with post-its or tape
* What it does:
	* Downloads a file from source silently using curl
	* Makes file executable silently
	* Takes an image via webcam (can't yet disable light indicator)
	* Emails the image to a selected email
	* Deletes the image from `/tmp`
	* Clears trash to remove evidence 😉


### Usage:
* Clone repo, e.g., `git clone Repo_URL`
* open terminal and `cd` into cloned repo
* Optionally change the `EMAIL_TO_SEND` variable to send images to desired email
*  type `./sneaky_camera` to run script

**Please use responsibly 😈** 

#### Author:
* Austin Harshberger
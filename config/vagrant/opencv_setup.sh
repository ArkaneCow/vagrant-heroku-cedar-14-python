#!/bin/bash

# Install opencv and opencv build dependencies

echo "=== Begin Vagrant Provisioning using 'config/vagrant/opencv_setup.sh'"

# http://scottlobdell.me/2014/10/install-opencv-heroku-ffmpeg-support/
# http://rodrigoberriel.com/2014/10/installing-opencv-3-0-0-on-ubuntu-14-04/
apt-get update -y
apt-get -y install libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip
apt-get install -y tesseract-ocr tesseract-ocr-eng libtesseract-dev libleptonica-dev


echo "=== End Vagrant Provisioning using 'config/vagrant/opencv_setup.sh'"

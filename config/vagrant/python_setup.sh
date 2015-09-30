#!/bin/bash

# Install python and required python modules.
# pip and virtualenv are in virtualenv_setup.sh

# Initial part of this via
# https://github.com/torchbox/vagrant-django-base/blob/master/install.sh

echo "=== Begin Vagrant Provisioning using 'config/vagrant/python_setup.sh'"

apt-get update -y

# Python dev packages
apt-get install -y python3 python3-dev python3-setuptools python3-pip

# Dependencies for image processing with Pillow (drop-in replacement for PIL)
# supporting: jpeg, tiff, png, freetype, littlecms
apt-get install -y libjpeg-dev libtiff-dev zlib1g-dev libfreetype6-dev liblcms2-dev

curl https://bootstrap.pypa.io/get-pip.py | python3.4
python3 -m pip install -U setuptools

echo "=== End Vagrant Provisioning using 'config/vagrant/python_setup.sh'"

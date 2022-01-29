#!/bin/bash

# this installs the virtualenv module
python3 -m pip install virtualenv
# this creates a virtual environment named "env"
python3 -m venv venv
# this activates the created virtual environment
source venv/bin/activate
# updates pip
pip install -U pip
# this installs the required python packages to the virtual environment
pip install -r requirements.txt

echo created environment

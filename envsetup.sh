#! /bin/bash

# Check if the virtual environment directory exists
if [ -d "env" ]; then
    echo "Python virtual env exists"
else 
    python3 -m venv env
fi

echo $PWD

# Activate the virtual environment
source env/bin/activate

# Install required packages
pip3 install -r requirements.txt

# Check if the logs directory exists
if [ -d "logs" ]; then
    echo "Log folder exists"
else 
    mkdir logs
    touch logs/error.log logs/access.log
fi

# Set permissions for logs directory
sudo chmod -R 777 logs

echo "envsetup finishes"

# Make the script executable
chmod +x envsetup.sh

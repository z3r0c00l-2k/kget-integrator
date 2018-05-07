#!/bin/sh
echo "Installing kget-integrator"

# copying kget-integrator to /usr/bin/kget-integrator
sudo cp bin/kget-integrator /usr/bin/kget-integrator

# Adding execute permissoion to kget-integrator
sudo chmod +x /usr/bin/kget-integrator

#Creating directory for native messaging host configuration
sudo mkdir -p /etc/opt/chrome/native-messaging-hosts
sudo mkdir -p /etc/chromium/native-messaging-hosts

#Copying configration for native messaging host configuration
sudo cp config/com.hell.kgetchromewrapper.json /etc/opt/chrome/native-messaging-hosts/com.hell.kgetchromewrapper.json
sudo cp config/com.hell.kgetchromewrapper.json /etc/chromium/native-messaging-hosts/com.hell.kgetchromewrapper.json

echo "kget-integrator is installed successfully!"
echo "Drag and drop extension to chrome and restart the browser"

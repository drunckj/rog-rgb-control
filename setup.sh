
#!/bin/bash
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
sudo apt install libusb-1.0-0 libusb-1.0-0-dev 
sudo apt install autoconf
cd rogauracore/
autoreconf -i
./configure
make
make install
cd ~/rog-rgb-control/
mv rogrgbcontrol/ ~/
cd ~/rogrgbcontrol
chmod +x rogrgbcontrol.sh
echo "[Desktop Entry]" >> ~/Desktop/rogrgbcontrol.desktop
echo "Type=Application" >> ~/Desktop/rogrgbcontrol.desktop
echo "Terminal=true" >> ~/Desktop/rogrgbcontrol.desktop
echo "Name=Rogrgbcontrol" >> ~/Desktop/rogrgbcontrol.desktop
echo "Icon=~/rogrgbcontrol/rog.svg" >> ~/Desktop/rogrgbcontrol.desktop
echo "Exec=~/rogrgbcontrol/rogrgbcontrol.sh" >> ~/Desktop/rogrgbcontrol.desktop
chmod +x ~/Desktop/rogrgbcontrol.desktop
chown root.root /usr/local/bin/rogauracore
chown u+s /usr/local/bin/rogauracore

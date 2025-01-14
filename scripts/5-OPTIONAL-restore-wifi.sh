sudo airmon-ng stop wlan0mon
sleep 1
sudo systemctl restart NetworkManager
sudo systemctl start iwd

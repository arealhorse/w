sudo airmon-ng check kill
sudo airmon-ng start wlan0
echo "Enter bssid:"
read bssid
echo "Channel:"
read channel
mkdir -p captured
sudo airodump-ng -w captured/$bssid -c $channel --bssid $bssid wlan0

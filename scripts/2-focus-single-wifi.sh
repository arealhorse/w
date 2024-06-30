sudo airmon-ng check kill
sudo airmon-ng start wlan0
echo "Enter bssid:"
read bssid
echo "Channel:"
read channel
mkdir -p captured
timestamp=$(date +"%Y-%m-%d---%H-%M-%S")

sudo airodump-ng -w "captured/$timestamp---$bssid" -c $channel --bssid $bssid wlan0

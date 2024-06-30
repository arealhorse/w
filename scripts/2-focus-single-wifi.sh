sudo airmon-ng check kill
sudo airmon-ng start wlan0
echo "Enter bssid:"
read bssid
echo "Channel:"
read channel
mkdir -p captured
timestamp=$(date +"%Y-%m-%d---%H-%M-%S")
formatted_bssid=$(echo "$bssid" | tr ':' '_')

sudo airodump-ng -w "captured/$timestamp---$formatted_bssid" -c $channel --bssid $bssid wlan0

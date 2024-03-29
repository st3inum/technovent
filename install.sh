sudo adduser mock
sudo adduser contest
# sudo apt install iptables-persistent
sudo iptables -F
sudo iptables -X
sudo iptables -Z
sudo iptables --policy INPUT DROP
sudo iptables --policy FORWARD DROP
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -s 172.104.169.81 -j ACCEPT
sudo iptables -A INPUT -s 172.104.160.52 -j ACCEPT
sudo iptables -A INPUT -s 8.8.8.8 -j ACCEPT
# sudo cp /etc/iptables/rules.v4 /etc/iptables.rules
# sudo sh -c "iptables-save > /etc/iptables/rules.v4"
sudo sh -c "iptables-save > /etc/iptables.rules"

sudo sh -c "echo gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-bark' >> /etc/profile"
sudo sh -c "echo gsettings set org.gnome.desktop.background picture-options 'scaled' >> /etc/profile"

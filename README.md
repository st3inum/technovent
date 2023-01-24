```
git clone https://github.com/st3inum/technovent.git && cd technovent
sudo cp bgrt-fallback.png /usr/share/plymouth/themes/spinner/
sudo cp watermark.png /usr/share/plymouth/themes/spinner/
sudo cp ubuntu-logo.png /usr/share/plymouth/
sudo cp wallpaper.png /usr/share/backgrounds/ICPCLogo-on-dark-smaller.png

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
sudo apt-get install apt-transport-https
```


```
sudo iptables -F
sudo iptables -X
sudo iptables -Z
sudo iptables -P INPUT ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow out to 172.104.169.81
sudo ufw allow out to 172.104.160.52
sudo ufw allow out to 8.8.8.8
sudo ufw allow out to 2001:4860:4860::8888
sudo ufw reload
# sudo ufw reset
xrandr --size 1920x1080
sudo cp --preserve=timestamps ~/.config/monitors.xml /var/lib/gdm3/.config/
mkdir -p /etc/skel/.config
sudo cp --preserve=timestamps ~/.config/monitors.xml /etc/skel/.config/

gsettings set org.gnome.desktop.interface gtk-theme "Yaru-bark"
gsettings set org.gnome.desktop.background picture-options 'scaled'
```


```
sudo iptables -F
sudo iptables -X
sudo iptables -Z
sudo iptables --policy INPUT DROP
sudo iptables --policy FORWARD DROP
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -s 172.104.169.81 -j ACCEPT
sudo iptables -A INPUT -s 172.104.160.52 -j ACCEPT
sudo iptables -A INPUT -s 8.8.8.8 -j ACCEPT
sudo cp /etc/iptables/rules.v4 /etc/iptables.rules

sudo echo "gsettings set org.gnome.desktop.interface gtk-theme \"Yaru-bark\"" >> /etc/profile
sudo echo "gsettings set org.gnome.desktop.background picture-options 'scaled'" >> /etc/profile
```

```
git clone https://github.com/st3inum/technovent.git && cd technovent
sudo cp bgrt-fallback.png /usr/share/plymouth/themes/spinner/
sudo cp watermark.png /usr/share/plymouth/themes/spinner/
sudo cp ubuntu-logo.png /usr/share/plymouth/
sudo cp wallpaper.png /usr/share/background/ICPCLogo-on-dark-smaller.png

sudo cp --preserve=timestamps ~/.config/monitors.xml /var/lib/gdm3/.config/
mkdir -p /etc/skel/.config
sudo cp --preserve=timestamps ~/.config/monitors.xml /etc/skel/.config/

gsettings set org.gnome.desktop.interface gtk-theme "Yaru-bark"


wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
sudo apt-get install apt-transport-https
```

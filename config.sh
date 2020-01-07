wait termux-setup-storage 
apt update && apt upgrade -y
echo "..."
echo "installing python "
pkg install python sl -y 
echo "..."
echo "installing youtube-dl"
pip install youtube-dl  
echo "..."
echo "configuring youtube-dl"
mkdir /data/data/com.termux/files/home/storage/shared/Youtube-downloads 
mkdir -p ~/.config/youtube-dl 
echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube-downloads/%(title)s.%(ext)s -f "best[height<=1080]"' >> ~/.config/youtube-dl/config
mkdir ~/bin  
echo 'youtube-dl $1' >> ~/bin/termux-url-opener 
cd ~
echo "..."
echo "youtube-dl configured"
echo "..."
echo "Ahora sí debería estar todo correcto"
echo "..."
echo "Buen viajeeee!!"
sleep 5s
sl
sleep 2s


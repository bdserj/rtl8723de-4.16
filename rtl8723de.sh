#!bin/bash
#
#
#
apt update && sudo apt install git dkms

git clone -b extended --single-branch https://github.com/lwfinger/rtlwifi_new.git
unofficial

cd rtlwifi_new

sudo dkms add ../rtlwifi_new
     dkms build rtlwifi-new/0.6 
     
     dkms install rtlwifi-new/0.6 --force
     sudo /bin/sh -c 'echo "options rtl8723de ant_sel=2" >> /etc/modprobe.d/rtl8723de.conf'
     shutdown 0 -r

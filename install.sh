#!/bin/bash
#
php install_iptv_pro.php
#
echo " "
echo "####################################################################################"
echo " "
echo "Die Lizenz wird nun installiert beide Fragen mit JA übernehmen !!!"
echo " "
echo 1 > /proc/sys/net/ipv4/ip_forward
#
/sbin/iptables -t nat -I OUTPUT --dest 149.202.206.51/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 123.103.255.80/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 62.210.244.112/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 185.73.239.0/28 -j DNAT --to-destination 127.0.0.1
#
apt-get install iptables-persistent
#
echo " "
echo "####################################################################################"
echo " "
echo "Installationsdateien werden entfernt"
echo " "
rm /root/install_iptv_pro.php
rm /root/install_iptv_pro.zip
rm /root/xt_1.0.60-inst.sh
echo " "
echo "####################################################################################"
echo " "
echo "Xtream Codes 1.0.60 edited by vaniusha"
echo " "
echo "Installation abgeschlossen..."
echo " "
echo "Der Server muss nun neu gestartet werden !!!"
echo " "
      read -p "Reboot now (y/n)?" CONT
      if [ "$CONT" == "y" ] || [ "$CONT" == "Y" ]; then
      reboot
      fi

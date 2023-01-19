#!/bin/sh

cp /etc/vsftpd.conf /etc/vsftpd.conf.bak

sed -i  "s/listen=NO/listen=YES/" 	/etc/vsftpd.conf
sed -i "s/^listen_ipv6/#&/" 	/etc/vsftpd.conf
echo "chroot_local_user=YES" >> /etc/vsftpd.conf
sed -i "s/#write_enable=YES/write_enable=YES/"		/etc/vsftpd.conf
sed -i "s/#chroot_list_enable=YES/chroot_list_enable=YES/"		/etc/vsftpd.conf
sed -i "s/#chroot_list_file=\/etc\/vsftpd.chroot_list/chroot_list_file=\/etc\/vsftpd.chroot_list/"		/etc/vsftpd.conf
echo "pasv_enable=Yes" >> /etc/vsftpd.conf
echo "pasv_min_port=10000" >> /etc/vsftpd.conf
echo "pasv_max_port=10100" >> /etc/vsftpd.conf
sed -i "s/secure_chroot_dir=\/var\/run\/vsftpd\/empty/secure_chroot_dir=\/home\/zsarir\//"  /etc/vsftpd.conf
echo "zsarir"  >	/etc/vsftpd.chroot_list

mkdir /home/zsarir/

useradd zsarir

echo -e "1234\n1234" | passwd zsarir

chown zsarir:zsarir /home/zsarir

chmod 775 /home/zsarir

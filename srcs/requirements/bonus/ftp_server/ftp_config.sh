#!/bin/sh

sed -i  "s/listen=NO/listen=YES/" 	/etc/vsftpd.conf
sed -i "s/^listen_ipv6/#&/" 	/etc/vsftpd.conf
echo "chroot_local_user=YES" >> /etc/vsftpd.conf
sed -i "s/#write_enable=YES/write_enable=YES/"		/etc/vsftpd.conf
sed -i "s/#chroot_list_enable=YES/chroot_list_enable=YES/"		/etc/vsftpd.conf
sed -i "s/#chroot_list_file=\/etc\/vsftpd.chroot_list/chroot_list_file=\/etc\/vsftpd.chroot_list/"		/etc/vsftpd.conf
sed -i "s/secure_chroot_dir=\/var\/run\/vsftpd\/empty/secure_chroot_dir=\/home\/zsarir\/empty\//"  /etc/vsftpd.conf
echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf
echo "pasv_enable=Yes" >> /etc/vsftpd.conf
echo "pasv_min_port=10000" >> /etc/vsftpd.conf
echo "pasv_max_port=10100" >> /etc/vsftpd.conf
echo "zsarir"  >>	/etc/vsftpd.chroot_list

useradd zsarir
echo -e "1234\n1234" | passwd zsarir
groupadd www-pub
usermod -a -G www-pub zsarir
chown -R zsarir:www-pub  /home/zsarir/
chmod 2775 /home/zsarir/
mkdir /home/zsarir/empty
chmod -w /home/zsarir/empty
vsftpd

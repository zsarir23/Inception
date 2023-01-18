#!/bin/sh

cp /etc/vsftpd.conf /etc/vsftpd.conf.bak

# sed -i "listen=YES" 			/etc/vsftpd.conf
sed -i "s/^listen_ipv6/#&/" 	/etc/vsftpd.conf
sed -i "s/#write_enable=YES/write_enable=YES/"		/etc/vsftpd.conf
echo "chroot_local_user=YES" >> /etc/vsftpd.conf
sed -i "s/#chroot_list_enable=YES/chroot_list_enable=YES/"		/etc/vsftpd.conf
sed -i "s/#chroot_list_file=\/etc\/vsftpd.chroot_list/chroot_list_file=\/etc\/vsftpd.chroot_list/"		/etc/vsftpd.conf

echo "zsarir"  >	/etc/vsftpd.chroot_list

# /usr/sbin/groupadd ftpaccounts

# /usr/sbin/adduser -g ftpaccounts -d /home/user/ zsarir

# echo -e "1234" | passwd zsarir

# chown zsarir:ftpaccounts /home/user

# chmod 775 /home/zsarir

# service vsftpd restart
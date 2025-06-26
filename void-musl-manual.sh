#buat partisi unutk /mnt dan /mnt/boot/efi
cfdisk /dev/drive_target_instalation

#format sesuai yg di butuhkan untik efi
mkfs.fat -F32 /dev/partisi_efi
mkfs.f2fs /dev/partisi_mnt

#mount 
mount /dev/partisi_mnt /mnt
mkdir -p /mnt/boot/efi
mount /dev/partisi_efi /mnt/boot/efi

#export conifg xbps arch untuk musl
export XBPS_ARCH=x86_64-musl#sesuaikan arsitektur

#install base-system 
xbps-install -S -R https://repo-fastly.voidlinux.org/current/musl -r /mnt base-system NetworkManager grub grub-x86_64-efi dbus efibootmgr neovim elogind mesa mesa-dri alsa-utils

#generate fstab

xgenfstab -U /mnt > /mnt/etc/fstab

#edit root options defaults,rw
nvim /mnt/etc/fastab
#chroot
xchroot /mnt /bin/bash

#set password root
passwd

#install grub
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GrubVoid

grub-mkconfig -o /boot/grub/grub.cfg

#keluarr
exit

#umont 
umount -R /mnt

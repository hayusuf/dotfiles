#!/bin/bash

ln -sf /usr/share/zoneinfo/America/Detroit /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo root:password | chpasswd

pacman -S --noconfirm xorg xorg-xinit sudo bash-completion openssh virt-manager qemu qemu-arch-extra reflector efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools git xdg-utils xdg-user-dirs pulseaudio alsa-utils inetutils base-devel linux-headers os-prober nvidia nvidia-utils firefox kitty dmenu feh pcmanfm lxappearance discord scrot openbox obconf plank nvidia-settings

systemctl enable NetworkManager

useradd -mG wheel yusuf
echo yusuf:password | chpasswd

echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers


printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"

bootctl install

echo "title   Arch Linux
linux   /vmlinuz-linux
initrd  /amd-ucode.img
initrd  /initramfs-linux.img
options root=/dev/sdb3 rw" > /boot/loader/entries/arch.conf

bootctl update


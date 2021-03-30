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

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

pacman -S --noconfirm bash-completion openssh virt-manager qemu qemu-arch-extra reflector xorg-xinit efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools git xdg-utils xdg-user-dirs pulseaudio alsa-utils inetutils base-devel linux-headers os-prober nvidia nvidia-utils xorg firefox kitty dmenu feh pcmanfm lxappearance discord steam lib32-nvidia-utils scrot openbox obconf plank nvidia-settings

bootctl install
echo "title   Arch Linux
linux   /vmlinuz-linux
initrd  /amd-ucode.img
initrd  /initramfs-linux.img
options root=/dev/sdb3 rw" > /boot/loader/entries/arch.conf

systemctl enable NetworkManager

useradd -m yusuf
echo yusuf:password | chpasswd
usermod -aG wheel yusuf

echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers.d/ermanno


printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"





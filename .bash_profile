#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

setxkbmap -option caps:escape
export EDITOR=vim

# setup path
path=("$HOME/.local/bin" $path)
# cargo why are you dumb
#path=("$HOME/.cargo/bin" $path)
#export PATH


if [[ -z $WAYLAND_DISPLAY && $(tty) = "/dev/tty1" ]]; then
	exec /home/yusuf/local/bin/start_river.sh
fi
#nix packages
#nix-env -iA nixpkgs.greetd.greetd nixpkgs.greetd.tuigreet nixpkgs.wayland nixpkgs.waybar nixpkgs.wofi nixpkgs.wl-clipboard nixpkgs.firefox-wayland nixpkgs.grim nixpkgs.brightnessctl nixpkgs.kitty nixpkgs.zoom-us nixpkgs.discord nixpkgs.signal-desktop
## # { config, pkgs, ... }:
#
#{
#  imports =
#    [ # Include the results of the hardware scan.
#      ./hardware-configuration.nix
#    ];
#
## let
##   home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
## in
## {
##   imports = [
##     (import "${home-manager}/nixos")
##   ];
##
##   home-manager.users.yusuf = {
##     #home.packages = [];
##   };
## }
#
#  # Use the systemd-boot EFI boot loader.
#  #boot.loader.systemd-boot.enable = true;
#  #boot.loader.efi.canTouchEfiVariables = true;
#  boot.loader.systemd-boot.enable = true;
#  boot.loader.grub.device = "nodev";
#
#  boot.kernelParams = [ "mem_sleep_default=deep" ];
#
#  # networking.hostName = "nixos"; # Define your hostname.
#  # Pick only one of the below networking options.
#  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
#  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
#
#  # Set your time zone.
#  time.timeZone = "America/Detroit";
#
#  # Configure network proxy if necessary
#  # networking.proxy.default = "http://user:password@proxy:port/";
#  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
#
#  # Select internationalisation properties.
#  # i18n.defaultLocale = "en_US.UTF-8";
#  # console = {
#  #   font = "Lat2-Terminus16";
#  #   keyMap = "us";
#  #   useXkbConfig = true; # use xkbOptions in tty.
#  # };
#
#  # Enable the X11 windowing system.
#  # services.xserver.enable = true;
#
#  # Configure keymap in X11
#  # services.xserver.layout = "us";
#  # services.xserver.xkbOptions = {
#  #   "eurosign:e";
#  #   "caps:escape" # map caps to escape.
#  # };
#
#  # Enable CUPS to print documents.
#  # services.printing.enable = true;
#
#  # Enable sound.
#  # sound.enable = true;
#  # hardware.pulseaudio.enable = true;
#
#  # Enable touchpad support (enabled default in most desktopManager).
#  # services.xserver.libinput.enable = true;
#
#  # Define a user account. Don't forget to set a password with ‘passwd’.
#  users.users.yusuf = {
#    isNormalUser = true;
#    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
#    packages = with pkgs; [
#    ];
#  };
#
#  # List packages installed in system profile. To search, run:
#  # $ nix search wget
#  nixpkgs.config.allowUnfree = true;
#  environment.systemPackages = with pkgs; [
#    pkgs.vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
#    pkgs.wget
#    pkgs.git
#    pkgs.firefox-wayland
#    pkgs.greetd.greetd
#    pkgs.greetd.tuigreet
#    pkgs.wayland
#    pkgs.waybar
#    pkgs.wofi
#    pkgs.wl-clipboard
#    pkgs.firefox-wayland
#    pkgs.grim
#    pkgs.brightnessctl
#    pkgs.kitty
#    pkgs.zoom-us
#    pkgs.discord
#    pkgs.signal-desktop
#    pkgs.zig
#    pkgs.wayland-protocols
#    pkgs.wayland-scanner
#    pkgs.wlroots
#    pkgs.libxkbcommon
#    pkgs.libevdev
#    pkgs.pixman
#    pkgs.pkg-config
#    pkgs.nix-index
#    pkgs.river
#    pkgs.terminator
#  ];
#
#  # Some programs need SUID wrappers, can be configured further or are
#  # started in user sessions.
#  # programs.mtr.enable = true;
#  # programs.gnupg.agent = {
#  #   enable = true;
#  #   enableSSHSupport = true;
#  # };
#
#  # List services that you want to enable:
#
#  # Enable the OpenSSH daemon.
#  # services.openssh.enable = true;
#
#  # Open ports in the firewall.
#  # networking.firewall.allowedTCPPorts = [ ... ];
#  # networking.firewall.allowedUDPPorts = [ ... ];
#  # Or disable the firewall altogether.
#  # networking.firewall.enable = false;
#
#  # Copy the NixOS configuration file and link it from the resulting system
#  # (/run/current-system/configuration.nix). This is useful in case you
#  # accidentally delete configuration.nix.
#  # system.copySystemConfiguration = true;
#
#  # This value determines the NixOS release from which the default
#  # settings for stateful data, like file locations and database versions
#  # on your system were taken. It‘s perfectly fine and recommended to leave
#  # this value at the release version of the first install of this system.
#  # Before changing this value read the documentation for this option
#  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
#  system.stateVersion = "22.05"; # Did you read the comment?
#
#}
#

{ pkgs, lib, unstbl, inputs, ... }:

{
  security.tpm2.enable = true;

  services.udisks2.enable = true;
  security.polkit.enable = true;
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
             "twingate"
  ];
  nixpkgs.config.allow.unfree = true;
  environment.systemPackages = with pkgs; [
    twingate
    unzip
    vlc
    flac
    sshfs
    samba
    psmisc
    cifs-utils
    libreoffice-qt6-fresh
#    unstbl.rpi-imager
    qbittorrent
    nomacs-qt6
    kdePackages.gwenview
    kdePackages.baloo-widgets
    kdePackages.baloo
    kdePackages.dolphin-plugins
  ];

   environment.etc."xdg/menus/applications.menu".source = "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";


  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;
  services.twingate.enable = true;
}

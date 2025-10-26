{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.udisks2.enable = true;

  environment.systemPackages = with pkgs; [
    smartmontools
    hdparm
    twingate
    vlc
    ntfs3g
    heroic
    lutris
    zoom-us
    clementine
    sshfs
    unzip
    cifs-utils
    qbittorrent
    python314
    ddcutil
    virtualbox
    spotify
    kdePackages.kio
    kdePackages.kservice
    shared-mime-info
    kdePackages.gwenview
  ];
  xdg.mime.enable = true;

  xdg.menus.enable = true;
  
  environment.etc."xdg/menus/applications.menu".source =
    "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";

  services.twingate.enable = true;
}

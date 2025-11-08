{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.udisks2.enable = true;

  environment.systemPackages = with pkgs; [
    smartmontools
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
    spotify
    kdePackages.kio
    kdePackages.kio-extras
    kdePackages.kimageformats
    kdePackages.kservice
    shared-mime-info
    kdePackages.gwenview
    kdePackages.baloo-widgets
    kdePackages.baloo
    kdePackages.kate
    kdePackages.dolphin-plugins
  ];
  xdg.mime.enable = true;

  xdg.menus.enable = true;
  
  environment.etc."xdg/menus/applications.menu".source = "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";
  services.twingate.enable = true;
}

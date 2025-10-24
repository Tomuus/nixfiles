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
  ];
  services.twingate.enable = true;
}

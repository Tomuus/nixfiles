{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

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
  ];
  services.twingate.enable = true;
}

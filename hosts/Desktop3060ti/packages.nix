{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    smartmontools
    hdparm
    cdparanoia
    lame
    abcde
    twingate
    vlc
    handbrake
    dvdbackup
    makemkv
    libcdio
    libdvdcss
  ];
  services.twingate.enable = true;
}

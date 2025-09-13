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
  ];
  services.twingate.enable = true;
}

{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    smartmontools
    hdparm
    twingate
    vlc
  ];
  services.twingate.enable = true;
}

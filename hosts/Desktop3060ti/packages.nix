{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    smartmontools
    hdparm
    cdparanoia
    lame
    abcde
  ];
}

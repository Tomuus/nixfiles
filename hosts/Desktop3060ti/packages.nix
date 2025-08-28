{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    smartmontools
    hdparm
  ];
}

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    unzip
    usbutils
  ];
  services.power-profiles-daemon.enable = true;
}

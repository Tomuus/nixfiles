{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    unzip
    usbutils
    inputs.quickshell.packages.${pkgs.system}.default
  ];
  services.power-profiles-daemon.enable = true;
}

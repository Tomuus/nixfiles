# desktop.nix
{ config, pkgs, ... }:

{
  services = {
    xserver.enable = true;

    desktopManager.plasma6.enable = true;

  };
  environment.systemPackages = with pkgs; [
    ghostty
  ];
}

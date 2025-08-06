# desktop.nix
{ config, pkgs, ... }:

{
  services = {
    xserver.enable = true;

    desktopManager.plasma6.enable = true;

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };
}

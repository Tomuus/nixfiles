#plasma6.nix

{ pkgs, ... }:

{
  services = {
    xserver.enable = true;

    desktopManager.plasma6.enable = true;

  };
  environment.systemPackages = with pkgs; [
    ghostty
  ];
}

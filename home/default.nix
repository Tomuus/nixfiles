#Home manager config
#./home/default.nix

{ config, pkgs, ... }:

{
  home.username = "tomus";
  home.homeDirectory = "/home/tomus";

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
  
  home.file.".config/hypr/hyprland.conf".source = ./configs/hyprland.conf;
}


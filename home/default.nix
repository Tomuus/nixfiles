#Home manager config
#./home/default.nix

{ config, pkgs, ... }:

{
  imports = [
    ./nix-managed/zsh.nix
  ];

  home.username = "tomus";
  home.homeDirectory = "/home/tomus";

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
  
  home.file.".config/hypr".source = ./configs/hypr;
  home.file.".config/waybar".source = ./configs/waybar;
}


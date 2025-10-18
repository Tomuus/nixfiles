#default.nix
#Imports configs for hyprland catppuccin mocha theme

{ ... }:

{
  home.file.".config/hypr".source = ./hypr;
  home.file.".config/waybar".source = ./waybar;
  home.file.".config/kitty".source = ./kitty;
  home.file.".config/rofi".source = ./rofi;
}

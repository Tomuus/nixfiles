#./home/configs/default.nix
#File for importing configs not managed with nix lang

{ ... }:

{
  home.file.".config/hypr".source = ./hypr;
  home.file.".config/waybar".source = ./waybar;
  home.file.".config/kitty".source = ./kitty;
  home.file.".config/rofi".source = ./rofi;
  home.file.".config/fastfetch".source = ./fastfetch;
}

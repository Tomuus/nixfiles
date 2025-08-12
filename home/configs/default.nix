#./home/configs/default.nix
#File for importing configs not managed with nix lang

{config, ...}:

{
  home.file.".config/hypr".source = ./hypr;
  home.file.".config/waybar".source = ./waybar;
  home.file.".config/kitty".source = ./kitty;
}

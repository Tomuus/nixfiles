#hyprland.nix
{ pkgs, unstbl, ... }:

{
  programs.hyprland.enable = true;
  programs.hyprland.package = unstbl.hyprland;
  environment.systemPackages = with pkgs; [
    kitty
    waybar
    rofi-wayland
    pulseaudio
    hyprlock
    bibata-cursors
    brightnessctl
    hyprpaper
  ];
}

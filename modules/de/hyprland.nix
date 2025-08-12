#hyprland.nix
{ pkgs, ... }:

{
  programs.hyprland.enable = true;
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

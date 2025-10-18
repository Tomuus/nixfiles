#hyprland.nix
{ pkgs, unstbl, userName, ... }:

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
    lxqt.lxqt-policykit
    kdePackages.dolphin
    hyprshot
  ];

  home-manager.users.${userName} = import ./catppuccin-mocha;
}

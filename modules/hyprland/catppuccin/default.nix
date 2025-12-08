#default.nix
#Used to be called hyprland.nix, renamed to default to make the import shorter

{ pkgs, unstbl, userName, inputs, ... }:

{
  programs.hyprland.enable = true;
  programs.hyprland.package = pkgs.hyprland;
  
  environment.systemPackages = with pkgs; [
    kitty
    waybar
    rofi
    pulseaudio
    hyprlock
    bibata-cursors
    brightnessctl
    hyprpaper
    lxqt.lxqt-policykit
    kdePackages.dolphin
    hyprshot
#    inputs.caelestiaShell.packages.${pkgs.system}.with-cli
    xdg-desktop-portal

  ];


  home-manager.users.${userName} = import ./catppuccin-mocha;
}

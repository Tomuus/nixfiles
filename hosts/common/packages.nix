#packages.nix

{ pkgs, ... }:

{
  programs = {
    zsh.enable = true;
    firefox.enable = true;
  };
  environment.systemPackages = with pkgs; [
    wget
    git
    fastfetch
    #neofetch
    htop
    cowsay
    vim
  ];
}

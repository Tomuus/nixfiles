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
    oh-my-posh
    fastfetch
    #neofetch
    htop
    cowsay
    vim
  ];
}

#packages.nix

{ pkgs, nvf, ... }:

{
  programs = {
    zsh.enable = true;
    firefox.enable = true;
#    nvf.enable = true;
  };
  environment.systemPackages = with pkgs; [
    wget
    git
    oh-my-posh
    fastfetch
    neofetch
    htop
    cowsay
    vim
  ];
}

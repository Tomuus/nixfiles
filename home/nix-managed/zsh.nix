#zsh.nix
#Zsh configuration

{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      gs = "git status";
      nxrs = "sudo nixos-rebuild switch --flake .";
    };
    initContent = ''
      cowsay I use nixos btw
      eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin_mocha.json)"
    '';
  };
}

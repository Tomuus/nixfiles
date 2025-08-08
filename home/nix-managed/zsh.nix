#zsh.nix
#Zsh configuration

{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      gs = "git status";
      nxrs = "nixos-rebuild switch --flake .";
    };
    initContent = ''
      eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin.json)"
    '';
  };
}

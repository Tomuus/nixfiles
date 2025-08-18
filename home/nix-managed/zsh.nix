#zsh.nix
#Zsh configuration

{ ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      gs = "git status";
      nxrs = "sudo nixos-rebuild switch --flake .";
      nivm = "nvim";
      nimv = "nvim"; #wonder why these 2 exits
      neofetch = "fastfetch";
    };
    initContent = ''
      cowsay I use nixos btw
      eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin_mocha.json)"
    '';
  };
}

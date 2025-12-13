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
      ga = "git add";
      gc = "git commit";
      gr = "git restore";
      ndw = "sudo nmcli device wifi"; #Nah terminal is all you need for wifi and bt
      gti = "git"; #Typo final boss
    };
    initContent = ''
      shuf -n 1 ~/.tips | cowsay 
      #eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin_mocha.json)"
    '';
  };

  home.file.".tips".source = ./tips;
}

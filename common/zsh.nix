#zsh.nix
#Zsh configuration

{ ... }:

{
  programs.fish = {
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
    shellInit = ''
      shuf -n 1 ~/.tips | cowsay 
			oh-my-posh init fish -c ~/.config/omp/catppuccin_mocha.json | source
    '';
  };

  home.file.".tips".source = ./tips;
}

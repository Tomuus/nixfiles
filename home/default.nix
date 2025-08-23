#Home manager config
#./home/default.nix

{ ... }:

{
  imports = [
    ./nix-managed
    ./configs
  ];

  home.username = "tomus";
  home.homeDirectory = "/home/tomus";

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
}


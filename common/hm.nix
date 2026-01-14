#Home manager config
#./home/default.nix

{ userName, ... }:

{
	imports = [
		./zsh.nix
	];

  home.username = userName;
  home.homeDirectory = "/home/${userName}";

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
}


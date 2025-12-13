{ userName, ... }:

{
  imports = [ 
    ./fonts.nix
    ./packages.nix
    ./system-properties.nix
    ./user.nix
  ];

	home-manager.users.${userName} = import ./zsh.nix;
}

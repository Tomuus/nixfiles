{ userName, ... }:

{	
	imports = [
		./base.nix
		./applications.nix
	];

	home-manager.users.${userName} = import ./config;
}

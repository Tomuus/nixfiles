{ pkgs, unstbl, userName, ... }:

{
  environment.systemPackages = with pkgs; [ 
		neovim 
		unstbl.legacyPackages."aarch64-linux".clang-tools
		unstbl.legacyPackages."aarch64-linux".clang
		cmake
		nixd 
		nil 
	];

	home-manager.users.${userName} = import ./hm.nix;
}

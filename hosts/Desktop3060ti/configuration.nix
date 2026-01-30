{ inputs, self, mods, userName, fullName, unstbl, ... }:

{
	flake.nixosConfigurations.Desktop3060ti = inputs.nixpkgs.lib.nixosSystem {
		specialArgs = { inherit inputs mods userName fullName unstbl; };
		modules = [
			self.nixosModules.desktopModule
			inputs.home-manager.nixosModules.home-manager
		];
	};

	flake.nixosModules.desktopModule = { pkgs, mods, ... }: {
		nixpkgs.config.allowUnfree = true;

  	imports = [
			../../common
    	./hardware-configuration.nix
	    "${mods}/hyprland/catppuccin"
    	"${mods}/minecraft.nix"
    	"${mods}/nvidia.nix"
  	  "${mods}/ripping.nix"
	    "${mods}/steam.nix"
    	"${mods}/cpp.nix"
  	  ./packages.nix
  	];
  	networking.hostName = "Desktop3060ti";
	};
}

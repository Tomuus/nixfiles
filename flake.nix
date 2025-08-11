{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    home-manager.url = "github:nix-community/home-manager?ref=release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nvf, ...} @ inputs:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    pankages.${system}.default = 
      (nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
	modules = [./home/nix-managed/nvf.nix];
      }).neovim;
    nixosConfigurations.Latitude7310 = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/Latitude7310/configuration.nix
	./modules/de/hyprland.nix
	./modules/dev/cpp.nix
        nvf.nixosModules.default
	home-manager.nixosModules.home-manager {
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.users.tomus = import ./home;
	}
      ];
    };
  };
}

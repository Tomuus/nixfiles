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
    mods = ./modules; #Just so i can import modules everywere i want wihout big paths
  in
  {
    packages.${system}.default = 
      (nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
	modules = [ ./home/nix-managed/nvf.nix ];
      }).neovim;
    nixosConfigurations.Latitude7310 = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs mods;};
      modules = [
        ./hosts/Latitude7310/configuration.nix
        nvf.nixosModules.default
	home-manager.nixosModules.home-manager {
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.users.tomus = import ./home;
	}
	{
          environment.systemPackages = with pkgs; [
            self.packages.${system}.default
          ];
        }
      ];
    };
    nixosConfigurations.Desktop3060ti = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs mods;};
      modules = [
        ./hosts/Desktop3060ti/configuration.nix
        nvf.nixosModules.default
	home-manager.nixosModules.home-manager {
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.users.tomus = import ./home;
	}
	{
          environment.systemPackages = with pkgs; [
            self.packages.${system}.default
          ];
        }
      ];
    };
    nixosConfigurations.Latitude5410 = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs mods;};
      modules = [
        ./hosts/Latitude5410/configuration.nix
        nvf.nixosModules.default
	home-manager.nixosModules.home-manager {
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.users.tomus = import ./home;
	}
	{
          environment.systemPackages = with pkgs; [
            self.packages.${system}.default
          ];
        }
      ];
    };

  };
}

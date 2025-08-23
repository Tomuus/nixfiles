{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager?ref=release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs = { self, nixpkgs, home-manager, nvf, quickshell, spicetify-nix, nixpkgs-unstable, ... } @ inputs:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    unstbl = nixpkgs-unstable.legacyPackages.${system};
    mods = ./modules; # Just so i can import modules everywhere i want without big paths  
  in
  {
    packages.${system}.nvf = 
      (nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [ ./home/nix-managed/nvf.nix ];
      }).neovim;

    nixosConfigurations = {
      Latitude7310 = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs mods unstbl; };
        modules = [
          ./hosts/Latitude7310/configuration.nix
          nvf.nixosModules.default
          home-manager.nixosModules.home-manager { home-manager.users.tomus = import ./home; } #If it works DON'T TOUCH IT
          {
            environment.systemPackages = [
              self.packages.${system}.nvf
            ];
          }
        ];
      };

      Desktop3060ti = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs mods unstbl; };
        modules = [
          ./hosts/Desktop3060ti/configuration.nix
          nvf.nixosModules.default
          home-manager.nixosModules.home-manager { home-manager.users.tomus = import ./home; }
          {
            environment.systemPackages = [
              self.packages.${system}.nvf
            ];
          }
        ];
      };

      Latitude5410 = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs mods unstbl; };
        modules = [
          ./hosts/Latitude5410/configuration.nix
          inputs.spicetify-nix.nixosModules.default
          nvf.nixosModules.default
          home-manager.nixosModules.home-manager { home-manager.users.tomus = import ./home; }
          {
            environment.systemPackages = [
              self.packages.${system}.nvf
            ];
          }
        ];
      };
    };
  };
}


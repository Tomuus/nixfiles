{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager?ref=release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    
    caelestiaShell = {
      url = "github:caelestia-dots/shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
  };

  outputs = { self, nixpkgs, home-manager, nvf, nixpkgs-unstable, caelestiaShell, ... } @ inputs:
  let
    unstbl = nixpkgs-unstable;
    mods = ./modules; # Just so i can import modules everywhere i want without big paths 
    userName = "tomus";
    fullName = "Tomus";
  in
  {
    nixosConfigurations = {
      Latitude7310 = nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
        specialArgs = { inherit inputs mods userName fullName; };
        modules = [
          ./hosts/Latitude7310/configuration.nix
          nvf.nixosModules.default
          home-manager.nixosModules.home-manager { home-manager.users.${userName} = import ./home { inherit userName fullName; }; } #If it works DON'T TOUCH IT
        ];
      };

      Desktop3060ti = nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
        specialArgs = { inherit inputs mods userName fullName; };
        modules = [
          ./hosts/Desktop3060ti/configuration.nix
          nvf.nixosModules.default
          home-manager.nixosModules.home-manager { home-manager.users.${userName} = import ./home { inherit userName fullName; }; }
        ];
      };

      Latitude5410 = nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
        specialArgs = { inherit inputs mods  userName fullName; };
        modules = [
          ./hosts/Latitude5410/configuration.nix
          inputs.spicetify-nix.nixosModules.default
          nvf.nixosModules.default
          home-manager.nixosModules.home-manager { home-manager.users.${userName} = import ./home { inherit userName fullName; }; }
        ];
      };

      Makbuk = nixpkgs.lib.nixosSystem {
    system = "aarch64-linux";
        specialArgs = { inherit unstbl inputs mods userName fullName; };
        modules = [
          ./hosts/Makbuk/configuration.nix
          #nvf.nixosModules.default
          home-manager.nixosModules.home-manager #If it works DON'T TOUCH IT
        ];
      };

    };
  };
}

/*
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢤⡄⠂⢺⠃⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⡪⠊⠙⢷⣤⡆⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⡪⠊⠀⠀⠀⢈⠝⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣾⣯⣦⡀⠀⢀⠔⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡠⡮⠋⠀⠙⢿⣷⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣀⣠⡾⠊⠀⠀⢀⢔⠕⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢷⣸⣊⠀⠀⠀⢰⠕⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⡀⣀⠜⠓⣝⠵⣂⣔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠨⠓⣅⠔⡄⠉⠙⠂⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠑⠠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

Properly vaccinated by Tomuus
*/

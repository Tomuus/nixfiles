{
  description = "Let's waste time debbuging config instead of code";

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

  outputs = { self, nixpkgs, home-manager, nixpkgs-unstable, caelestiaShell, ... } @ inputs:
  let
    unstbl = nixpkgs-unstable;
    mods = ./modules; # Just so i can import modules everywhere i want without big paths 
    userName = "tomus";
    fullName = "Tomus";
  in
  {
    nixosConfigurations = {
			Desktop3060ti = nixpkgs.lib.nixosSystem {
    		system = "x86_64-linux";
        specialArgs = { inherit inputs mods userName fullName; };
        modules = [
          ./hosts/Desktop3060ti/configuration.nix
					./common
          home-manager.nixosModules.home-manager 
					];
      };
      
			Makbuk = nixpkgs.lib.nixosSystem {
    		system = "aarch64-linux";
        specialArgs = { inherit unstbl inputs mods userName fullName; };
        modules = [
          ./hosts/Makbuk/configuration.nix
					./common
          home-manager.nixosModules.home-manager 
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

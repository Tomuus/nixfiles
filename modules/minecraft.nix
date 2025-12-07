#minecraft.nix

{ pkgs, ... }:

{
  
  imports = [
#    ./discord.nix
  ];

  environment.systemPackages = with pkgs; [
    prismlauncher
  ];
}

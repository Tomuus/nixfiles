{ pkgs, ... }:

{
  nixpkgs.config.allowBroken = true;
  environment.systemPackages = with pkgs; [
    minecraft
    prismlauncher
  ];
}

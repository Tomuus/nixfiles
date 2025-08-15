#configuration.nix

{ mods, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./../common
    "${mods}/de/hyprland.nix"
    "${mods}/dev/cpp.nix"
  ];
  networking.hostName = "Latitude5410";
}

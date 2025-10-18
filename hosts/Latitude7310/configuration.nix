#configuration.nix

{ mods, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./../common
    "${mods}/de/hyprland"
    "${mods}/dev/cpp.nix"
  ];
  networking.hostName = "Latitude7310";
}

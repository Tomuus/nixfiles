#configuration.nix

{ mods, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
#    ./cal.nix
    ./../common
#    ./tata.nix
    "${mods}/dev/cpp.nix"
    "${mods}/de/hyprland"
    "${mods}/bluetooth.nix"
  ];
  networking.hostName = "Latitude7310";
}

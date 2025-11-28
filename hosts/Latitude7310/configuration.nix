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
#    "${mods}/de/plasma6.nix"
  ];
  networking.hostName = "Latitude7310";
}

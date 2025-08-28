#configuration.nix

{ mods, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./../common
    #./packages.nix
    "${mods}/de/hyprland.nix"
    "${mods}/de/plasma6.nix"
    #"${mods}/dev/cpp.nix"
    "${mods}/gpu/nvidia.nix"
    "${mods}/dm/sddm.nix"
  ];
  networking.hostName = "Desktop3060ti";
}

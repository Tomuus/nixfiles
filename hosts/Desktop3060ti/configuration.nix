#configuration.nix

{ mods, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../common
    #./packages.nix
    "${mods}/de/plasma6.nix"
    #"${mods}/dev/cpp.nix"
    "${mods}/gpu/nvidia.nix"
  ];
  networking.hostName = "Desktop3060ti";
}

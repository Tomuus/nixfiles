#configuration.nix

{ mods, ... }:

{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./hardware-configuration.nix
    ./../common
    "${mods}/de/hyprland.nix"
    "${mods}/de/plasma6.nix"
    "${mods}/minecraft.nix"
    "${mods}/gpu/nvidia.nix"
    "${mods}/dm/sddm.nix"
    "${mods}/ripping.nix"
    "${mods}/steam.nix"
    ./packages.nix
  ];
  networking.hostName = "Desktop3060ti";
}

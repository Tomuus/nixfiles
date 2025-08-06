#configuration.nix

{ config, lib, pkgs, ... }:

{
  imports = [
    ./../common/packages.nix
    ./../common/system-properties.nix
    ./hardware-configuration.nix
    ./../common/user.nix
    ./../common/fonts.nix
  ];
  networking.hostName = "Latitude7310";
}

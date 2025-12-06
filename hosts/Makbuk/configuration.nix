#configuration.nix

{ mods, ... }:

{
  imports = [
    ./hardware-configuration.nix
#    ./packages.nix
#    ./cal.nix
    ./../common
#    ./tata.nix
#    "${mods}/dev/cpp.nix"
#    "${mods}/de/hyprland"
#    "${mods}/bluetooth.nix"
  ];
  networking.hostName = "Makbuk";

  networking.wireless.iwd = {
    enable = true;
    settings.General.EndableNetworkConfiguration = true;
  };

  hardware.asahi.peripheralFirmwareDirectory = ./firmware;
}

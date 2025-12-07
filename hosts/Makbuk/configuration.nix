#configuration.nix

{ mods, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./apple-silicon-support
    ./packages.nix
#    ./cal.nix
    ./../common
#    ./tata.nix
    "${mods}/dm/sddm.nix"
    "${mods}/de/hyprland"
    "${mods}/de/plasma6.nix"
    "${mods}/minecraft.nix"
    "${mods}/aarch.nix"
#    "${mods}/bluetooth.nix"
  ];
  networking.hostName = "Makbuk";

  networking.wireless.iwd = {
    enable = true;
    settings.General.EndableNetworkConfiguration = true;
  };
  nixpkgs.config.allowUnsupportedSystem = true;
  boot.kernelParams = [ "hid_apple.fnmode=2" ];
  hardware.asahi.peripheralFirmwareDirectory = ./firmware;
}

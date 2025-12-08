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
    "${mods}/minecraft.nix"
    "${mods}/hyprland/new"
    "${mods}/dev/cpp.nix"
    "${mods}/de/cosmic.nix"
    "${mods}/de/plasma6.nix"
    "${mods}/neovim"
    "${mods}/aarch.nix"
    "${mods}/tailscale.nix"
#    "${mods}/bluetooth.nix"
  ];
  networking.hostName = "Makbuk";

  networking.wireless.iwd = {
    enable = true;
    settings.General.EndableNetworkConfiguration = true;
  };
  nixpkgs.config.allowUnsupportedSystem = true;
  boot.kernelParams = [ "hid_apple.fnmode=2" "apple_dcp.show_notch=1" ];
  hardware.asahi.peripheralFirmwareDirectory = ./firmware;
}

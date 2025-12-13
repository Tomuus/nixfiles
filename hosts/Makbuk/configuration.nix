#configuration.nix

{ mods, ... }:

{
	boot.binfmt.emulatedSystems = [ "i686-linux" ];

  imports = [
    ./hardware-configuration.nix
    ./apple-silicon-support
    ./packages.nix
#    ./cal.nix
    ./../common
#    ./tata.nix
#    "${mods}/sddm.nix"
    "${mods}/minecraft.nix"
    "${mods}/hyprland/new"
    "${mods}/cpp.nix"
#    "${mods}/cosmic.nix"
#    "${mods}/plasma6.nix"
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
  boot.kernelParams = [ "hid_apple.fnmode=2" "apple_dcp.show_notch=1" "hid_apple.swap_opt_cmd=2" ];
  hardware.asahi.peripheralFirmwareDirectory = ./firmware;
}

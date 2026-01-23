#configuration.nix

{ mods, ... }:

{
	programs.fuse.enable = true;

	boot.binfmt.emulatedSystems = [ "i686-linux" "x86_64-linux" ];
	boot.binfmt.addEmulatedSystemsToNixSandbox = true;

  imports = [
    ./hardware-configuration.nix
    ./apple-silicon-support
    ./packages.nix
#    "${mods}/sddm.nix"
    "${mods}/minecraft.nix"
    "${mods}/hyprland/new"
#    "${mods}/cosmic.nix"
    "${mods}/cpp.nix"
    "${mods}/rust.nix"
#    "${mods}/plasma6.nix"
    "${mods}/neovim"
    "${mods}/aarch.nix"
    "${mods}/tailscale.nix"
    "${mods}/bluetooth.nix"
  ];
  networking.hostName = "Makbuk";

  networking.wireless.iwd = {
    enable = true;
    settings.General.EndableNetworkConfiguration = true;
  };
  
	virtualisation.docker.enable = true;

	nixpkgs.config.allowUnsupportedSystem = true;
  boot.kernelParams = [ "hid_apple.fnmode=2" "appledrm.show_notch=1" "hid_apple.swap_opt_cmd=2" ];
  hardware.asahi.peripheralFirmwareDirectory = ./firmware;
}

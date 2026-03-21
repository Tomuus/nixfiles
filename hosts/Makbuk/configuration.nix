{ inputs, self, mods, userName, fullName, unstbl, ... }:

{
	
		programs.fuse.enable = true;

	boot.binfmt.emulatedSystems = [ "i686-linux" "x86_64-linux" ];
	boot.binfmt.addEmulatedSystemsToNixSandbox = true;

  imports = [
    ./hardware-configuration.nix
    ./apple-silicon-support
    ./packages.nix
		../../common
#    "${mods}/sddm.nix"
    "${mods}/minecraft.nix"
    "${mods}/hyprland/new"
#    "${mods}/cosmic.nix"
    "${mods}/cpp.nix"
    "${mods}/rust.nix"
    "${mods}/bluetooth.nix"
    "${mods}/aarch.nix"
    "${mods}/neovim"
    "${mods}/ipon.nix"
    "${mods}/tailscale.nix"
  ];
  networking.hostName = "Makbuk";

  networking.wireless.iwd = {
    enable = true;
    settings.General.EndableNetworkConfiguration = true;
  };
  
	nixpkgs.config.allowUnsupportedSystem = true;
  boot.kernelParams = [ "hid_apple.fnmode=2" "appledrm.show_notch=1" "hid_apple.swap_opt_cmd=2" "hid_apple.swap_fn_leftctrl=1" ];
  hardware.asahi.peripheralFirmwareDirectory = ./firmware;

	services.seatd.enable = true;

	
}

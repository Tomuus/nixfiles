{ pkgs, ... }:

{
	nixpkgs.config.allowUnsupportedSystem = true;

  environment.systemPackages = with pkgs; [
		apfs-fuse
		steam
		qemu
		edk2
  ];
}

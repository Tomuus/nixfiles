{ pkgs, ... }:

{
	nixpkgs.config.allowUnsupportedSystem = true;

  environment.systemPackages = with pkgs; [
		apfs-fuse
#		steam
		qemu
		edk2
		retroarch-full
		asahi-audio
		spotify-qt
  ];

#	services.spotifyd.enable = true;
}

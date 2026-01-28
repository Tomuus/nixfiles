{ pkgs, ... }:

{
	nixpkgs.config.allowUnsupportedSystem = true;

	services.upower.enable = true;

  environment.systemPackages = with pkgs; [
		apfs-fuse
		qemu
		edk2
		retroarch
		asahi-audio
		spotify-qt
		superTuxKart
		vlc
		usbutils
#		steam
		gnumake
		gperf
		libreoffice-fresh
		rpcs3
  ];

	services.usbmuxd.enable = true;
}

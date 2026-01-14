{ pkgs, ... }:

{
	nixpkgs.config.allowUnsupportedSystem = true;

	services.upower.enable = true;

  environment.systemPackages = with pkgs; [
		apfs-fuse
		qemu
		edk2
		retroarch-full
		asahi-audio
		spotify-qt
		superTuxKart
		vlc
		ifuse
		libimobiledevice
		usbutils
		kdePackages.ark
		squashfuse
		squashfsTools
#		steam
		gnumake
		gperf

  ];

	services.usbmuxd.enable = true;
}

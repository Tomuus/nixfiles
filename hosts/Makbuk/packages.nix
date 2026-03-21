{ pkgs, unstbl, ... }:

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
		usbutils
#		steam
		gnumake
		gperf
		libreoffice-fresh
		rpcs3
		blender
		python3
		widevine-cdm
		brave
		glibc
		ryubing
		qbittorrent
		snes9x
		element-desktop
		claude-code
		udev          # libudev
    libinput
    mesa          # libgbm
    libxkbcommon
    seatd         # libseat
    pkg-config
		seatd
		appimage-run
		clementine
		lm_sensors
		discord
		rmpc
  ];

	services.mpd.enable = true;

	services.ollama.enable = true;
	services.ollama.package = unstbl.legacyPackages.${pkgs.system}.ollama; 

	services.usbmuxd.enable = true;
}

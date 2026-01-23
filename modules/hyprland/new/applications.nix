{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		kdePackages.dolphin
		kdePackages.dolphin-plugins
		kdePackages.kio
		kdePackages.kio-admin
		kdePackages.kio-fuse
		kdePackages.kio-extras
		kdePackages.kio-gdrive

		kdePackages.gwenview
		kdePackages.ark
	];
}

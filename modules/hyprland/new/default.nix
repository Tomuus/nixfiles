{ pkgs, userName, ... }:

{
	programs.hyprland.enable = true;
	services.udisks2.enable = true;

	environment.systemPackages = with pkgs;
	[
		kitty
		waybar 
		rofi
		hyprlock
		quickshell
		brightnessctl
		hypridle
		kdePackages.breeze
		bibata-cursors
		mako
		kdePackages.dolphin
		kdePackages.dolphin-plugins
		cifs-utils	
    kdePackages.baloo-widgets
    kdePackages.baloo
		kdePackages.kio-extras
		oh-my-posh
		hyprmon
		lxqt.lxqt-policykit
		xdg-desktop-portal
		xdg-desktop-portal-gtk
		xdg-desktop-portal-hyprland
		kdePackages.gwenview
		kdePackages.plasma-integration
		shared-mime-info
		xdg-utils
		desktop-file-utils
	];

	environment.etc."xdg/menus/applications.menu".source = "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";

	xdg.mime.enable = true;
	xdg.menus.enable = true;
	xdg.portal.enable = true;


	home-manager.users.${userName} = import ./config;
}

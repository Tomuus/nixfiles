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
	];

	home-manager.users.${userName} = import ./config;
}

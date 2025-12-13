{ pkgs, ... }:

{
	programs.hyprland.enable = true;

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
	];
}

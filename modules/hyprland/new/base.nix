#base packages for hyprland

{ pkgs, ... }:

{
	programs.hyprland.enable = true;
	programs.hyprlock.enable = true;

	services.udisks2.enable = true;

	environment.systemPackages = with pkgs; [
		kitty
		waybar
		rofi
		quickshell #4 now jusr experiments, should be in local packages, but well
		brightnessctl
		kdePackages.breeze
		mako
		hyprmon
		lxqt.lxqt-policykit
		oh-my-posh

		#Idk but one of these fixes dolphin not seeing apps
		xdg-desktop-portal
		xdg-desktop-portal-gtk
		xdg-desktop-portal-hyprland
		kdePackages.plasma-integration
		shared-mime-info
		xdg-utils
		desktop-file-utils
	];

	environment.etc."xdg/menus/applications.menu".source = "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";

	xdg.mime.enable = true;
	xdg.menus.enable = true;
	xdg.portal.enable = true;

}

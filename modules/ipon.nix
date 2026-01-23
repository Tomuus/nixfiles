{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		libimodiledevice
		ifuse
	]; 
}

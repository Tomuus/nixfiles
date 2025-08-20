#configuration.nix

{ mods, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./../common
    "${mods}/dev/cpp.nix"
    "${mods}/de/hyprland.nix"
    #"${mods}/de/plasma6.nix"
    "${mods}/steam.nix"
    "${mods}/minecraft.nix"
    "${mods}/spotify.nix"
  ];
  networking.hostName = "Latitude5410";

  #SmartCard reader gets so fucking hot
  services.udev.extraRules = ''
    SUBSYSTEM=="usb", ATTR{idVendor}=="0a5c", ATTR{idProduct}=="5832", ATTR{authorized}="0"
  ''; 

  
}

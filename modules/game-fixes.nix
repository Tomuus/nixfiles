{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xorg.libXScrnSaver
    xorg.libXxf86vm
    libnotify
    hashlink.withLibs
  ];
}

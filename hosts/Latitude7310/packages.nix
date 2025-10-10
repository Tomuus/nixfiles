{ pkgs, lib, ... }:

{
  services.udisks2.enable = true;
  security.polkit.enable = true;
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
             "twingate"
  ];
  nixpkgs.config.allow.unfree = true;
  environment.systemPackages = with pkgs; [
    twingate
    kdePackages.dolphin
    unzip
    vlc
    flac
    sshfs
    samba
    psmisc
    cifs-utils
    libreoffice-qt6-fresh
  ];
  services.power-profiles-daemon.enable = true;
  #services.twingate.enable = true;
}

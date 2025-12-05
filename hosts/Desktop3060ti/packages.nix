{ pkgs, inputs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.udisks2.enable = true;

  environment.systemPackages = with pkgs; [
    smartmontools
    twingate
    vlc
    ntfs3g
    heroic
    lutris
    zoom-us
    clementine
    sshfs
    unzip
    cifs-utils
    qbittorrent
    python314
    spotify
    kdePackages.kio
    kdePackages.kio-extras
    kdePackages.kimageformats
    kdePackages.kservice
    shared-mime-info
    kdePackages.gwenview
    kdePackages.baloo-widgets
    kdePackages.baloo
    kdePackages.kate
    kdePackages.dolphin-plugins
    inputs.caelestiaShell.packages.${pkgs.system}.with-cli
    roboto
    roboto-mono
  ];
  xdg.mime.enable = true;

  xdg.menus.enable = true;
 
 # virtualisation.virtualbox.host.enable = true;
 # users.extraGroups.vboxusers.members = [ "tomus" ];
 # virtualisation.virtualbox.host.enableExtensionPack = true;
 # virtualisation.virtualbox.guest.enable = true;

  environment.etc."xdg/menus/applications.menu".source = "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";
  services.twingate.enable = true;
}

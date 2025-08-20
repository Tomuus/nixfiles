{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    twingate
  ];
  #services.twingate.enable = true;
  nixpkgs.config.allow.unfree = true;
}

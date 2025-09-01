{ pkgs, lib, ... }:

{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
             "twingate"
  ];
  nixpkgs.config.allow.unfree = true;
  environment.systemPackages = with pkgs; [
    twingate
  ];
  services.power-profiles-daemon.enable = true;
  #services.twingate.enable = true;
}

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    twingate
  ];
  services.twingate.enable = true;
}

{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  
  services.tailscale.enable = true;
}

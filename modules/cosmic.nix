{ pkgs, ... }:

{
  services.desktopManager.cosmic = 
  {
    enable = true;
    xwayland.enable = true;
  };
}

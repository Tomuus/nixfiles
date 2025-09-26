{ config, lib, pkgs, ... }:

{
  boot.kernelModules = [ "nvidia" ];
   nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
    ];
   
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.graphics.enable = true;
  hardware.graphics.extraPackages = with pkgs; [
    libglvnd
  ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package =  config.boot.kernelPackages.nvidiaPackages.stable;
  };

  environment.systemPackages = [
    config.boot.kernelPackages.nvidiaPackages.stable
  ];
}

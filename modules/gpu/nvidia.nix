{ config, lib, ... }:

{
   nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
    ];
  
  services.xserver.videoDrivers = [ "nvidia" ];

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

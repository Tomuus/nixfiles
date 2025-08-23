{ config, ... }:

{
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

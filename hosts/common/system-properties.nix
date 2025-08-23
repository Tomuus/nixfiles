#system-properties.nix

{ ... }:

{
  nix.settings.experimental-features = ["nix-command" "flakes"];
  
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Warsaw";
  
  home-manager.backupFileExtension = "bak";
  
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    jack.enable=true;
  };

  system.stateVersion = "25.05";
  }

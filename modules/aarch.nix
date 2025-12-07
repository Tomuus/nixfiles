{ pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    fex
    muvm
  ];
}

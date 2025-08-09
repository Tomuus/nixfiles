#cpp.nix
#Module for all C++ related packages

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    valgrind
  ];
}

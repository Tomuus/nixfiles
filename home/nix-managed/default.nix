#./home/nix-managed/default.nix
#Just importing configs managed with nix

{ config, ... }:

{
  imports = [
    ./zsh.nix
  ];
}

#./home/nix-managed/default.nix
#Just importing configs managed with nix

{ ... }:

{
  imports = [
    ./zsh.nix
  ];
}

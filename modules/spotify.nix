#spotify.nix

{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    spotify
#    spicetify-cli
  ];
  programs.spicetify =
  let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
  in
  {
    enable = true;
    theme = spicePkgs.themes.catppuccin;
    enabledCustomApps = with spicePkgs.apps; [
      marketplace
    ];
  };
  nixpkgs.config.allowUnfree = true;
}

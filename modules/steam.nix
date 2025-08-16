{ pkgs, ... }:

{
  programs.steam.enable = true;
  environment.systemPackages = with pkgs; [ 
    steam-run
  ];
  programs.gamescope.enable = true;
  programs.steam.gamescopeSession.enable = true;
}

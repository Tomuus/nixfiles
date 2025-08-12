#my user (tomus)

{ pkgs, ...}:
{
  programs.zsh.enable = true;
  users.users.tomus = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = ["wheel"]; #Grants sudo
    packages = with pkgs; [
      tree #Added by default but got so useful I didn't remove it 
    ];
  };
}

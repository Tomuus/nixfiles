#my user (tomus)

{config, pkgs, ...}:
{
  programs.zsh.enable = true;
  users.users.tomus = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = ["wheel"]; #Grants sudo
    packages = with pkgs; [
      tree
    ];
  };
}

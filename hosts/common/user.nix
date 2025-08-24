#my user (tomus)

{ pkgs, userName, fullName, ...}:
{
  programs.zsh.enable = true;
  users.users.${userName} = {
    description = "${fullName}";
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = ["wheel"]; #Grants sudo
    packages = with pkgs; [
      tree #Added by default but got so useful I didn't remove it 
    ];
  };
  security.sudo.extraConfig = ''
    Defaults:${userName} passprompt="[sudo] password for ${fullName}:"
  '';
}

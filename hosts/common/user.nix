#my user (tomus)

{ pkgs, userName, fullName, ...}:
{
	programs.fish.enable = true;
  programs.zsh.enable = true;
  users.users.${userName} = {
    description = "${fullName}";
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = ["wheel" "cdrom" "docker"]; #Grants sudo
    packages = with pkgs; [
      tree #Added by default but got so useful I didn't remove it 
    ];
  };
  security.sudo.extraConfig = ''
    Defaults:${userName} passprompt="[sudo] password for ${fullName}:"
  '';
}

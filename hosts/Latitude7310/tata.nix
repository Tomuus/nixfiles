{ pkgs, ... }:

{
  users.users."tata" = {
    isNormalUser = true;
    shell = pkgs.zsh;
  };
}

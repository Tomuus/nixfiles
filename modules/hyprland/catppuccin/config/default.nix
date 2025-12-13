#default.nix
#Imports configs for hyprland catppuccin mocha theme

{ ... }:

{
  imports = [
    ./quickshell
  ];
  
  home.file.".config/hypr".source = ./hypr;
  home.file.".config/waybar".source = ./waybar;
  home.file.".config/kitty".source = ./kitty;
  home.file.".config/rofi".source = ./rofi;

	home.file.".config/fastfetch/config.jsonc".source = ./fastfetch.jsonc;
  home.file.".config/omp/catppuccin_mocha".source = ./omp.json;

	programs.zsh.initContent = ''
		 eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin_mocha.json)"
	'';
}

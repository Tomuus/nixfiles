{ ... }:

{
	home.file.".config/omp/catppuccin_mocha.json".source = ./omp.json;

	programs.zsh.initContent = ''
		 eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin_mocha.json)"
	'';
}

{ pkgs, ... }:

{
	#home.file.".config/nvim/init.lua".source = ./init.lua;

	programs.neovim = {
		enable = true;

# Tell Neovim to use plugins from nixpkgs
		plugins = with pkgs.vimPlugins; [
			nvim-cmp
				cmp-nvim-lsp
				nvim-autopairs
				#catppuccin
		];
	};

}

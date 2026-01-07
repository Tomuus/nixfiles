{ pkgs, ... }:

{
	#home.file.".config/nvim/init.lua".source = ./init.lua;

	programs.neovim = {
		enable = true;

		plugins = with pkgs.vimPlugins; [
				nvim-cmp
				cmp-nvim-lsp
				nvim-autopairs
				catppuccin-nvim
				nvim-treesitter
				lualine-nvim
				nvim-tree-lua
		];
	};

}

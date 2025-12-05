{ ... }:

{
  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
    };
    
    options = {
      number = true;
      relativenumber = false;
      shiftwidth = 2;          
      tabstop = 2;        
      softtabstop = 2;
    };
    filetree = {
     nvimTree = {
        setupOpts = {
          view = {
            number = false;
            relativenumber = false;
          };
        };
      };
    };
    lsp.enable = true;            
    autocomplete.nvim-cmp.enable = true;
    languages = {

#      clang.enable = true;
      nix.enable = true;
      rust.enable = true;
    };

    autopairs.nvim-autopairs.enable = true;
  };
}


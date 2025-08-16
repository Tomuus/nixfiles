{ pkgs, lib, ... }:

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

      clang.enable = true;
      nix.enable = true;
    };
  };
}


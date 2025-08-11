{ pkgs, lib, ... }:

{
  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "frappe";
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
                
    autocomplete.nvim-cmp.enable = true;
    languages = {
      enableLSP = true;

      clang.enable = true;
      nix.enable = true;
    };
  };
}


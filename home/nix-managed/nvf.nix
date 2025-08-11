{ pkgs, ... }

{
  vim = {
    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
    };
    
    autocomplete.nvim-cmp.enable = true;

    languages = {
      enableLSP = true;
      enableTreesitter = true;
  
      nix.enable = true;
      cpp.enable = true;
  };
 }

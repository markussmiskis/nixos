{ lib, ... }:{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraConfig = lib.fileContents ../configs/init.vim;
  };
}

{
  programs.neovim = {
    enable = true;
    extraConfig = ''
      set tabstop=2
      set softtabstop=2
      set shiftwidth=2
      set expandtab
      set number
      set relativenumber
      set cursorline
      highlight CursorLine cterm=bold term=bold guibg=Grey40
    '';
  };
}

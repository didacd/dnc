_: {
  config.vim.comments.comment-nvim.enable = true;
  config.vim.options = {
    mouse = "a"; # (a) - all modes // (i) - insert mode // etc...
    clipboard = "unnamedplus"; # Allows neovim to access the system clipboard
    cmdheight = 1;
    showtabline = 1;
    ignorecase = true;
    hlsearch = true;
    smartindent = true;
    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
    number = true;
    relativenumber = false; # Overrides `number`
    guifont = "CaskaydiaCove\ Nerd\ Font:12";
  };
}

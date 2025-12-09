_: {
  config.vim.comments.comment-nvim.enable = true;
  config.vim.globals = {
    #clipboard = "osc52"; # Allows neovim to access the system clipboard through ssh
    # Note: If you use a terminal multiplexer like `zellij`, there is currently a bug
    # preventing this to work properly:
    # --> https://github.com/zellij-org/zellij/issues/4320
    # To fix this in the meantime. Disable osc52 in zellij.
  };
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
  config.vim.utility = {
    ccc.enable = true;
    surround.enable = true;
  };
}

_: {
  config.vim.git = {
    enable = true;
    # With this option ⬆️, the following plugins are automatically enabled:
    # - gitsigns
    # - vim-fugitive
    # - git-conflict
    # - gitlinker-nvim

    # If you need support for Gitlab, I recommend using a TUI like:
    # - https://github.com/NiklasTreml/gitlab-tui
    # For GitHub use: denops-gh.vim
  };

  config.vim.keymaps = [
    {
      key = "<leader>gb";
      action = ":Telescope git_branches<cr>";
      mode = "n";
      desc = "Git Branches";
    }
    {
      key = "<leader>gs";
      action = ":Telescope git_status<cr>";
      mode = "n";
      desc = "Git Status";
    }
    {
      key = "<leader>gc";
      action = ":Telescope git_commits<cr>";
      mode = "n";
      desc = "Git Commits";
    }
    {
      key = "<leader>gl";
      action = ":Telescope git_bcommits<cr>";
      mode = "n";
      desc = "Git Commits in Buffer";
    }
    {
      # Git stash
      key = "<leader>gS";
      action = ":Telescope git_stash<cr>";
      mode = "n";
      desc = "Git Stash";
    }
  ];
}

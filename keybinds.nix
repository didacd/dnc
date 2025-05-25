_: {
  config.vim.keymaps = [
    {
      key = "<leader>e";
      action = ":Neotree toggle<cr>";
      mode = "n";
      desc = "Toggle Explorer";
    }
    {
      key = "<leader>tf";
      action = ":ToggleTerm direction=float<cr>";
      mode = "n";
      desc = "Float";
    }
    {
      key = "<leader>th";
      action = ":ToggleTerm direction=horizontal<cr>";
      mode = "n";
      desc = "Horizontal";
    }
    {
      key = "<leader>tv";
      action = ":ToggleTerm direction=vertical<cr>";
      mode = "n";
      desc = "Vertical";
    }
  ];
  config.vim.binds = {
    whichKey = {
      enable = true;
      setupOpts = {
        notify = true;
        preset = "modern";
      };
      register = {
        # Only useful to define keybind descriptions
        "<leader>f" = "Telescope";
        "<leader>g" = "Git";
        "<leader>b" = "Buffers";
        "<leader>l" = "LSP";
        "<leader>h" = "Help Tags";
        "<leader>gs" = "Git Status";
        "<leader>e" = "Explorer";
        "<leader>t" = "Terminal";
      };
    };
  };
}

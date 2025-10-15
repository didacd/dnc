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
      desc = "ToggleTerm Float";
    }
    {
      key = "<leader>th";
      action = ":ToggleTerm direction=horizontal<cr>";
      mode = "n";
      desc = "ToggleTerm Horizontal";
    }
    {
      key = "<leader>tv";
      action = ":ToggleTerm direction=vertical<cr>";
      mode = "n";
      desc = "ToggleTerm Vertical";
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
        "<leader>c" = "Git Conflict";
        "<leader>e" = "Explorer";
        "<leader>t" = "Toggle";
        "<leader>d" = "Debugging";
      };
    };
  };
}

_: {
  config.vim.keymaps = [
    {
      key = "<leader>e";
      action = ":Neotree toggle<cr>";
      mode = "n";
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
        "<leader>g" = "Live Grep";
        "<leader>b" = "Buffers";
        "<leader>l" = "LSP";
        "<leader>h" = "Help Tags";
        "<leader>gs" = "Git Status";
        "<leader>e" = "Explorer";
        "<leader>ef" = "Explorer Find File";
      };
    };
  };
}

_: {
  config.vim.tabline = {
    nvimBufferline = {
      enable = true;
      mappings = {
        closeCurrent = "<leader>bx";
      };
      setupOpts = {
        options = {
          numbers = "none";
          indicator.style = "icon";
          middle_mouse_command = "bdelete! %d";
        };
      };
    };
  };
}

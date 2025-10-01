_: {
  config.vim.assistant.copilot = {
    enable = false;
    cmp.enable = false;
    mappings.panel = {
      accept = "<C-CR>"; # By default Ctrl + Enter should be better to avoid AI crap noise.
      #jumpNext = "<C-]>"; # QoL between suggestions
      #jumpPrev = "<C-[>";
    };
  };
}

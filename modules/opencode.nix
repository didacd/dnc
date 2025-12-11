{pkgs, ...}: {
  #config.vim.assistant.copilot = {
  #  enable = false;
  #  cmp.enable = false;
  #  mappings.panel = {
  #    accept = "<C-CR>"; # By default Ctrl + Enter should be better to avoid AI crap noise.

  #    # By default, these are already enabled:
  #    #jumpNext = "<]]>";
  #    #jumpPrev = "<[[>";
  #  };
  #};

  # Opencode setup:
  config.vim.extraPlugins = {
    opencode = {
      package = pkgs.vimPlugins.opencode-nvim;
      setup = "vim.g.opencode_opts = {}";
    };
  };

  config.vim.keymaps = [
    {
      key = "<leader>oa";
      action = ":lua require('opencode').ask('@this: ', { submit = true })<cr>";
      mode = ["n" "v"];
      desc = "Opencode Ask";
    }
    {
      key = "<leader>os";
      action = ":lua require('opencode').select()<cr>";
      mode = ["n" "v"];
      desc = "Opencode Select";
    }
    {
      key = "<leader>ot";
      action = ":lua require('opencode').toggle()<cr>";
      mode = ["n" "t"];
      desc = "Opencode Toggle";
    }
    {
      key = "ga";
      action = ":lua require('opencode').prompt('@this')<cr>";
      mode = ["n" "v"];
      desc = "Opencode Add to Context";
    }
  ];
}

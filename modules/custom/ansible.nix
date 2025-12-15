_: {
  vim.lsp.servers = {
    ansiblels = {
      package = "ansible-language-server";
      args = ["--stdio"];
      filetypes = [
        "yaml.ansible"
      ];
      rootPatterns = [".git" "requirements.yml" "ansible.cfg"];
      capabilities = {
        textDocument = {
          completion = {
            completionItem = {
              snippetSupport = true;
            };
          };
        };
      };
    };
  };

  vim.autocmds = [
    {
      event = ["BufRead" "BufNewFile"];
      pattern = [
        "*/playbooks/*.yml"
        "*/playbooks/*.yaml"
        "*/roles/*/*.yml"
        "*/roles/*/*.yaml"
        "*/group_vars/*.yml"
        "*/group_vars/*.yaml"
        "*/host_vars/*.yml"
        "*/host_vars/*.yaml"
      ];
      command = "set filetype=yaml.ansible";
    }
  ];
}

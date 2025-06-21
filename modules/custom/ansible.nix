_: {
  vim.lsp.servers = {
    ansiblels = {
      package = "ansible-language-server";
      args = ["--stdio"];
      filetypes = [
        "yaml.ansible"
        "yaml"
        "yml"
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
}

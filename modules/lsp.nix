_: {
  config.vim.lsp = {
    enable = true;
    lspconfig.enable = true;
    formatOnSave = true;
    lspkind.enable = false;
    lightbulb.enable = false;
    lspsaga.enable = false;
    trouble.enable = true;
    lspSignature.enable = true;
  };

  config.vim.languages = {
    enableTreesitter = true;
    enableExtraDiagnostics = true;
    enableFormat = true;

    bash.enable = true;
    clang.enable = true;
    ts.enable = true;
    python.enable = true;
    nix.enable = true;
    lua.enable = true;
    rust.enable = true;
    go.enable = true;
    typst.enable = true;
    yaml.enable = true;
    html.enable = true;
    css.enable = true;
    helm = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
    terraform = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
    hcl = {
      enable = true;
      format.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
  };
}

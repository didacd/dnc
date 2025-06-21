# Didac's custom neovim configuration using NVF.
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf = {
      # Documentation: https://notashelf.github.io/nvf/
      url = "github:notashelf/nvf";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nvf,
    ...
  }: let
    supportedSystems = [
      "x86_64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];

    forEachSystem = f:
      nixpkgs.lib.genAttrs supportedSystems (
        system:
          f {
            inherit system;
            pkgs = import nixpkgs {inherit system;};
          }
      );
  in {
    packages = forEachSystem (
      {
        pkgs,
        system,
      }: let
        neovimWrapped =
          (nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [
              ./options.nix
              ./keybinds.nix
              ./theme.nix
              ./ui.nix
              ./modules/lsp.nix
              ./modules/treesitter.nix
              ./modules/tabline.nix
              ./modules/statusline.nix
              ./modules/telescope.nix
              ./modules/autopairs.nix
              ./modules/nvim-cmp.nix
              ./modules/luasnip.nix
              ./modules/notify.nix
              ./modules/project-nvim.nix
              ./modules/neotree.nix
              ./modules/dashboard.nix
              ./modules/terminal.nix
              ./modules/copilot.nix
              ./modules/custom/ansible.nix
            ];
          }).neovim;
      in {
        default = neovimWrapped;
      }
    );

    devShells = forEachSystem ({
      pkgs,
      system,
    }: {
      default = pkgs.mkShell {
        buildInputs = [
          pkgs.neovim
          pkgs.git
          pkgs.ripgrep
          pkgs.nodejs
          pkgs.ansible-language-server # For Ansible support
        ];
      };
    });
  };
}

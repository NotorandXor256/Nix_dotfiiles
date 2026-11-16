{ pkgs, ... }:
{
  programs.nvchad={
    enable= true;
    extraConfig = builtins.readFile ./neovim/lspconfig.lua;
    extraPackages = with pkgs; [
      ripgrep
      fd
      fzf

      # Required for many NvChad plugin
      wl-clipboard

      # Lua
      lua-language-server
      stylua
      
      # Nix
      nil
      nixfmt-rfc-style

      # Python
      pyright 
      black

      # Rust
      rust-analyzer
      rustfmt

      # C / C++
      clang-tools

      # C# 
      csharpier

      # JS 
      typescript-language-server
      prettier

      # Markdown
      marksman

      # Bash
      bash-language-server
      shellcheck
      shfmt
      
      # YAML / JSON
      yaml-language-server
    ];
  };
}

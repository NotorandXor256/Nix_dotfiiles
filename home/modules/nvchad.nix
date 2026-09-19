{ pkgs, ... }:
{
  programs.nvchad={
    enable= true;
    extraConfig = ''
      -- Custom vim options
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.expandtab = true
      vim.wo.relativenumber = true
  
      -- Custom keymaps
    '';
    extraPackages = with pkgs; [
      ripgrep
      fd
      fzf

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

      # Shell
      bash-language-server
    ];
  };
}

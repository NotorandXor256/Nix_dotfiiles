{ pkgs, pkgs_unstable, ... }:
{
  # nixpkgs.config.allowUnfree = true;
  home.packages = (with pkgs; [
    #termial
    kitty.terminfo # caused problems if removed

    # CLI utils
    vim
    wget
    curl
    btop
    fastfetch
    tmux
    wl-clipboard
    ntfs3g
    ollama    
    nmap

    # Coding stuff
    git
    nodejs
    docker
    python3
    # WM stuff
    # Other
        
  ]) ++ (with pkgs_unstable; [
    # godot
  ]);
}

{ pkgs, pkgs_unstable, ... }:
{
  # nixpkgs.config.allowUnfree = true;
  home.packages = (with pkgs; [
    # CLI utils
    vim
    wget
    curl
    btop
    fastfetch
    tmux
    # yazi
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

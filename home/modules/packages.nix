{ pkgs, pkgs_unstable, ... }:
let
  logseqDB = import ../../pkgs/logseqDB/default.nix  { inherit pkgs; };
in 
{
  nixpkgs.config.allowUnfree = true;
  home.packages = (with pkgs; [
    # Destop apps
    kitty
    drawio
    kdePackages.kdeconnect-kde
    logisim-evolution
    vlc
    obsidian
    logseqDB    #logseq-patch 
    syncthing
    mmex 
    libreoffice
    brave
    kicad
    protonmail-desktop
    stellarium

    # CLI utils
    vim
    wget
    btop
    fastfetch
    tmux
    yazi
    wl-clipboard
    zsh
    ntfs3g
    # ollama    

    # Coding stuff
    git
    nodejs
    docker
    python3
    gcc  #avaible by default
    gnumake
    binutils
    gdb
    valgrind

    # WM stuff
    # Other
        
  ]) ++ (with pkgs_unstable; [
    godot
  ]);
}

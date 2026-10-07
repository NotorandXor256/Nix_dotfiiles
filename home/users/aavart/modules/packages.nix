{ pkgs, pkgs_unstable, ... }:
let
  logseqDB = import ../../../pkgs/logseqDB/default.nix  { inherit pkgs; };
in 
{
  # nixpkgs.config.allowUnfree = true;
  home.packages = (with pkgs; [
    # Destop apps
    kitty
    drawio
    kdePackages.kdeconnect-kde
    logisim-evolution
    vlc
    # obsidian
    logseqDB    #logseq-patch 
    syncthing
    mmex 
    # libreoffice
    brave
    # kicad
    # protonmail-desktop
    stellarium
    paperless-ngx

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
    android-tools
    nmap

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
    # godot
    super-productivity
  ]);
}

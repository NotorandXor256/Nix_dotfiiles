{ pkgs, homeStateVersion, inputs, pkgs_unstable, ... }: {
  imports = [
    inputs.nix4nvchad.homeManagerModules.default
    ../../modules/bash.nix
    ../../modules/nvchad.nix
    ../../modules/git.nix 

    modules/packages.nix
    modules/programs.nix
  ];

  home = {
    username = "oggy";
    homeDirectory = "/home/oggy";
    stateVersion = "26.05";
  };
}

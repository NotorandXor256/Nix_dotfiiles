{ pkgs, homeStateVersion, inputs, pkgs_unstable, ... }: {
  imports = [
    inputs.nix4nvchad.homeManagerModules.default
    ../../modules/applications.nix
    ../../modules/bash.nix
    ../../modules/nvchad.nix
    ../../modules/userSetting.nix
    ../../modules/git.nix 
    ../../modules/packages.nix
    ../../modules/setting.nix
    ../../modules/packages.nix
  ];

  home = {
    username = "aavart";
    homeDirectory = "/home/aavart";
    stateVersion = "26.05";
  };
  userSettings = {
    name="aavartsharma";
    email="rockstarfan0369@gmail.com";
  };
  
  programs.home-manager.enable = true;
  programs.firefox.enable= true;
  programs.nnn ={
    enable = true;
    quitcd = true;
  };
}

{ pkgs, homeStateVersion, inputs, pkgs_unstable, ... }: {
  imports = [
    inputs.nix4nvchad.homeManagerModules.default
    ../../modules/bash.nix
    ../../modules/nvchad.nix
    ../../modules/git.nix 
    ../../modules/programs.nix

    modules/userSetting.nix
    modules/packages.nix
    modules/setting.nix
    modules/applications.nix
    modules/programs.nix
  ];

  home = {
    username = "aavart";
    homeDirectory = "/home/aavart";
    stateVersion = "26.05";
  };
  userSettings = {
    name="Notorandxor_turing";
    email="105069473+NotorandXor256@users.noreply.github.com";
  };
}

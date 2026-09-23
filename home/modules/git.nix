{ config, pkgs, ... }:

{
  programs.git.settings = {
    enable = true;
    # config is in home/users/aavart/default.nix
    user.name = config.userSettings.name;
    user.email = config.userSettings.email;

    extraConfig = {
      init.defaultBranch = "main";
    };

    lfs.enable = true;
  };
}

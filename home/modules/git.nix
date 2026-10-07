{ config, pkgs, ... }:
{
  programs.git.settings = {
    enable = true;
    # config is in home/users/aavart/default.nix
    user.name = "Notorandxor_turing";
    user.email = "105069473+NotorandXor256@users.noreply.github.com";

    extraConfig = {
      init.defaultBranch = "main";
    };

    lfs.enable = true;
  };
}

{ inputs, pkgs_unstable, username, ... }:
{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
	  extraSpecialArgs = { 
      inherit inputs; 
      inherit pkgs_unstable;
    };
    # https://nixos-and-flakes.thiscute.world/nixos-with-flakes/start-using-home-manager
    # you must add user in nixos config

    # When running sudo nixos-rebuild switch, the configuration of home-manager 
    # will be applied automatically. (It's not necessary to run home-manager 
    # switch manually!)

	  users =  builtins.listToAttrs (
        map (username: {
          name = username;
          value = import ./users/${username}/default.nix;
        }
    ) username );
  };
  # Use home-manager.extraSpecialArgs to pass custom arguments to ./home.nix
  # Uncomment the next line to make all flake inputs available in home.nix
  # home-manager.extraSpecialArgs = inputs;
}

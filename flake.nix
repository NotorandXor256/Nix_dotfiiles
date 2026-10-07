{
  description = "First flake";
  inputs = {
	  nixpkgs = {
	    url= "github:NixOS/nixpkgs/nixos-26.05";
	  };
	  home-manager= {
	    url = "github:nix-community/home-manager/release-26.05";
	    inputs.nixpkgs.follows= "nixpkgs";
	  };
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
	  nix4nvchad = {
	    url = "github:nix-community/nix4nvchad";
	    inputs.nixpkgs.follows = "nixpkgs";
	  };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, nixpkgs-unstable, ... }: 
  let 
    system_arch = "x86_64-linux";
    hosts = {
      laptop = "laptop";
      silica = "silica";
    };
    users = {
      aavart = "aavart";
      oggy = "oggy";
    };
    lib = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.${system_arch};
    pkgs_unstable = nixpkgs-unstable.legacyPackages.${system_arch};
    mkHost = { hostname, username}: 
      nixpkgs.lib.nixosSystem {
	      system = system_arch;
		    specialArgs = { 
          inherit inputs; 
          inherit username;
          inherit pkgs_unstable;
        };
	    	modules = map (x: ./users/${x}.nix ) username ++ [ 
	        ./hosts/machine/${hostname}/default.nix
          ./hosts/machine/${hostname}/hardware-configuration.nix
		      ./home/home.nix 
	    	];
	    };
  in {
# https://nixos-and-flakes.thiscute.world/nixos-with-flakes/nixos-flake-configuration-explained
    # laptop , silica are the options for .#<meachine> in sys update command in nixos
	  nixosConfigurations = {
  	  laptop = mkHost {
        hostname = hosts.laptop;
        username =  [
          users.aavart 
          users.oggy
        ];
      };
	    silica = mkHost {
        hostname = hosts.silica;
        username =  [
          users.oggy 
        ];
      };
    };
    #homeConfigurations.aavart = home-manager.lib.homeManagerConfiguration {
    #  inherit pkgs;
    #  extraSpecialArgs = {
    #    inherit inputs;
    #    inherit pkgs_unstable;
    #  };
    #  modules = [
    #    ./home/users/aavart/default.nix
    #  ];
    #};
  };
}

{
  inputs.nixpkgs = {
    url = "github:Nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    systems = [ "x86_64-linux" ];
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    devShells = forAllSystems (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        cpython = pkgs.mkShell {
          packages = with pkgs; [
            autoconf
            automake
            libtool
            autoconf-archive
            pkgconf
            pkg-config
          ];
        };

        vartslang = pkgs.mkShell {
          packages = with pkgs; [
            python3
            gcc
            gdb
            gnumake
            binutils
            valgrind
          ];
        };
      }
    );
  };
}

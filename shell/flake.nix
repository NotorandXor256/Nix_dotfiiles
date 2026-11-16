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
            gdb
            gcc
            valgrind

            autoconf
            automake
            libtool
            autoconf-archive
            pkgconf
            pkg-config
            encodings
          ];
        };

        python_env = pkgs.mkShell {
          packages = (with pkgs; [
            python3
          ]) ++
          (with pkgs.python313Packages; [
            youtube-transcript-api 
            fpdf2
          ]);
        };

        libary = pkgs.mkShell {
          packages = (with pkgs; [
            python314
          ]) ++ 
          (with pkgs.python314Packages; [
            youtube-transcript-api
            yt-dlp  
            reportlab
          ]);
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

        avr-gcc = pkgs.mkShell {
          packages = (with pkgs; [
              avrdude
              avrlibc
            ]) ++ (with pkgs.pkgsCross.avr.buildPackages; [
              binutils
              gcc
              # avrdude
          ]);
        };
      }
    );
  };
}

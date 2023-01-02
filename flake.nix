{
  description = "Webdev website flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, ... }:
    let
      pkgsFor = system: import nixpkgs {
        inherit system;
        overlays = [ self.overlay ];
      };
    in
    {
      overlay = final: prev: {
        maga = prev.callPackage ./sites/maga { };
      };

    } // utils.lib.eachDefaultSystem (system:
      let pkgs = pkgsFor system;
      in {
        defaultPackage = pkgs.maga;
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.zola
          ];
        };
      });
}

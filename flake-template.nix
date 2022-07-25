# Generated file, do not edit! 
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?rev=NIXPKGS_REV";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs?rev=NIXPKGS_UNSTABLE_REV";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system: {
      devShell = import ./ghc.nix {
        nixpkgs = import nixpkgs { inherit system; };
        nixpkgs-unstable = import nixpkgs-unstable { inherit system; };
        withIde = true;
        withGhcid = true;
        withHadrianDeps = true;
      };
    });
}

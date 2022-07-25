# Generated file, do not edit! 
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?rev=a634c8f6c1fbf9b9730e01764999666f3436f10a";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs?rev=a0a69be4b5ee63f1b5e75887a406e9194012b492";
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

{ nixpkgs ? import <nixpkgs> { } }:
let
  inherit (nixpkgs) pkgs;
  inherit (pkgs) haskellPackages;

  haskellDeps = ps:
    with ps; [
      base
      lens
      mtl
      tidal
      containers
      colour
      hosc
      text
      parsec
      network
      vector
      bifunctors
      transformers
      bytestring
      clock
      deepseq
      primitive
      random
      ghci
    ];

  ghc = haskellPackages.ghcWithPackages haskellDeps;

  nixPackages = [ ghc haskellPackages.cabal-install ];
in pkgs.stdenv.mkDerivation {
  name = "env";
  buildInputs = nixPackages;
}

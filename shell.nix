{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    haskellPackages.tidal
    haskellPackages.tidal-midi

    # keep this line if you use bash
    bashInteractive
  ];
}

{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "new-york-otf";
  version = "1.0";

  src = ../assets/fonts/new-york-patched.zip;

  unpackPhase = ''
    runHook preUnpack
    ${pkgs.unzip}/bin/unzip $src

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    install -Dm644 new-york-patched/*.otf -t $out/share/fonts/opentype/

    runHook postInstall
  '';
}
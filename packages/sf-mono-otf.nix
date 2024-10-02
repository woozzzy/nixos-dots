{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "sf-mono-otf";
  version = "1.0";

  src = ../assets/fonts/sf-mono-patched.zip;

  unpackPhase = ''
    runHook preUnpack
    ${pkgs.unzip}/bin/unzip $src

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    install -Dm644 sf-mono-patched/*.otf -t $out/share/fonts/opentype/

    runHook postInstall
  '';
}
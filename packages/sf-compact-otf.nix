{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "sf-compact-otf";
  version = "1.0";

  src = ../assets/fonts/sf-compact-patched.zip;

  unpackPhase = ''
    runHook preUnpack
    ${pkgs.unzip}/bin/unzip $src

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    install -Dm644 sf-compact-patched/*.otf -t $out/share/fonts/opentype/

    runHook postInstall
  '';
}
{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "sf-pro-otf";
  version = "1.0";

  src = ../assets/fonts/sf-pro-patched.zip;

  unpackPhase = ''
    runHook preUnpack
    ${pkgs.unzip}/bin/unzip $src

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    install -Dm644 sf-pro-patched/*.otf -t $out/share/fonts/opentype/

    runHook postInstall
  '';
}
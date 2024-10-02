{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "sf-mono-ttf";
  version = "1.009";

  src = ../../assets/fonts/SF-mono.zip;

  unpackPhase = ''
    runHook preUnpack
    ${pkgs.unzip}/bin/unzip $src

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    install -Dm644 berkeley-mono-patched/*.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
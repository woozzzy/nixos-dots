{
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  boot.extraModprobeConfig = ''     
      options hid_apple fnmode=2
  '';
  boot.kernelModules = [ "hid-apple"  ];
}
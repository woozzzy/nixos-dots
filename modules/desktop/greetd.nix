{ pkgs, ... }:

{
  services.greetd = {
    enable = true;
    settings = {
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
      user = "woozy";    
    };
  };
}
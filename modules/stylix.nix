{ inputs, pkgs, ... }:

{
  stylix = {
    enable = true;

    base16Scheme = { # Gruvbox Dark, Soft https://github.com/dawikur/base16-gruvbox-scheme/tree/master
      base00 = "32302f";
      base01 = "3c3836";
      base02 = "504945";
      base03 = "665c54";
      base04 = "bdae93";
      base05 = "d5c4a1";
      base06 = "ebdbb2";
      base07 = "fbf1c7";
      base08 = "fb4934";
      base09 = "fe8019";
      base0A = "fabd2f";
      base0B = "b8bb26";
      base0C = "8ec07c";
      base0D = "83a598";
      base0E = "d3869b";
      base0F = "d65d0e";
    };

    image = ../assets/wallpaper.jpg;
    polarity = "dark";
    opacity.terminal = 0.85;

    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";
    cursor.size = 24;

    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override { fonts = [ "Hack" ]; };
        name = "Hack Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.montserrat;
        name = "SFProDisplay Nerd Font";
      };
      serif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
        name = "SFProDisplay Nerd Font";
      };
      sizes = {
        applications = 12;
        terminal = 11;
        desktop = 11;
        popups = 12;
      };
    };
  };
}
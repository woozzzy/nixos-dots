{ pkgs, ... }:

{
  gtk = {
    enable = true;
    iconTheme.package = pkgs.whitesur-icon-theme;
    iconTheme.name = "WhiteSur";

    # theme.package = pkgs.gruvbox-gtk-theme;
    # theme.name = "Gruvbox Dark";
  };
}
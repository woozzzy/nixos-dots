{ pkgs, ...}:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.displayManager.defaultSession = "Hyprland";

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";

    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
    GDK_BACKEND = "wayland";
    GTK_USE_PORTAL = "1";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    QT_QPA_PLATFORM = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    MOZ_ENABLE_WAYLAND = "1";
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };

  programs.thunar = {
    enable = true;

    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-volman
    ];
  };

  environment.systemPackages = with pkgs; [
    libnotify 
    
    kitty foot rofi waybar dunst 
    
    hyprshot grim slurp

    hyprpaper hyprlock hypridle grim slurp wlogout

    pavucontrol

    qt6.qtwayland qt5.qtwayland
    
    ];
}

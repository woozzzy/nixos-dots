{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # NixOS
    home-manager nil

    # Essentials
    git vim wget eza tmux git-credential-oauth

    # Devleopment Apps
    vscode.fhs starship wezterm

    # School
    zathura texlive.combined.scheme-full

    # Desktop Apps
    google-chrome obsidian libreoffice-qt6-fresh spotify tetrio-desktop

    # System monitors
    htop btop nvtopPackages.nvidia neofetch fastfetch showmethekey

    # File systems and management
    ntfs3g unzip unrar direnv
 
    # Audio and Video
    ffmpeg mpv pulseaudio playerctl 

    greetd.tuigreet
 ];

  fonts.packages = with pkgs; [
    corefonts
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    (nerdfonts.override { fonts = [ "Hack" ]; })
    font-awesome
  ];
}
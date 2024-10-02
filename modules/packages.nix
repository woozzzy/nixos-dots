{ pkgs, ... }: 
let
  sf-pro-otf = pkgs.callPackage ../packages/sf-pro-otf.nix { };
  sf-compact-otf = pkgs.callPackage ../packages/sf-compact-otf.nix { };
  sf-mono-otf = pkgs.callPackage ../packages/sf-mono-otf.nix { };
  new-york-otf = pkgs.callPackage ../packages/new-york-otf.nix { };
in {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # NixOS
    home-manager nil cachix

    # Essentials
    git git-lfs vim wget eza tmux git-credential-oauth p7zip jq

    # Devleopment Apps
    vscode.fhs starship wezterm cudatoolkit

    # School
    zathura texlive.combined.scheme-full

    # Desktop Apps
    google-chrome obsidian libreoffice-qt6-fresh spotify discord

    # System monitors
    htop btop nvtopPackages.nvidia neofetch fastfetch showmethekey

    # File systems and management
    ntfs3g unzip unrar direnv undmg xar
 
    # Audio and Video
    ffmpeg mpv pulseaudio playerctl 

    greetd.tuigreet

    whitesur-icon-theme

    stalonetray

    nerd-font-patcher
 ];

  fonts.packages = with pkgs; [
    corefonts
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    (nerdfonts.override { fonts = [ "Hack" ]; })
    font-awesome
    sf-pro-otf
    sf-compact-otf
    sf-mono-otf
    new-york-otf
  ];
}
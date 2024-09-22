{
  imports = [
    ../../home-manager/fish.nix
    ../../home-manager/foot.nix
    ../../home-manager/starship.nix
    ../../home-manager/gtk.nix
    ../../home-manager/git/git.nix
    ../../home-manager/wlogout.nix
  ];

  home.username = "woozy";
  home.homeDirectory = "/home/woozy";
  home.stateVersion = "24.05";
  
  programs.home-manager.enable = true;

  home.file = {
    ".config/hypr/".source = ../../home-manager/hypr;
    ".config/wlogout/icons".source = ../../assets/wlogout;
    ".gitconfig".source = ../../home-manager/git/.gitconfig;
    ".gitconfig.personal".source = ../../home-manager/git/.gitconfig.personal;
    ".gitconfig.school".source = ../../home-manager/git/.gitconfig.school;
  };
}
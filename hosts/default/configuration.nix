{ inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ../../modules/packages.nix
      ../../modules/stylix.nix
      ../../modules/nvidia-driver.nix

      ../../modules/system
      
      ../../modules/desktop/xserver.nix
      ../../modules/desktop/greetd.nix
      ../../modules/desktop/hyprland.nix
      inputs.home-manager.nixosModules.default
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.gc = {
    automatic = true;
    dates = "weelkly";
    options = "--delete-older-than 30d";
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "woozy" = import ./home.nix;
    };
  };

  system.stateVersion = "24.05"; 
}

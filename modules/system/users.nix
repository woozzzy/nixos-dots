{ pkgs, ... }: 

{
  users = {    
    users.woozy = {
      isNormalUser = true;
      description = "woozy";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
    };
  };

  security.sudo.extraRules = [
    {
      users = [ "woozy" ];
      commands = [
        { command = "ALL"; 
          options = ["NOPASSWD"];
        }
      ];
    }
  ];
}
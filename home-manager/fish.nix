{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
      starship init fish | source
    '';

    shellAliases = {
      rb = "sudo nixos-rebuild switch --flake ~/nixos-dots/#default";
      ls = "eza --icons=auto --group-directories-first";
      ll = "ls -l --no-permissions --no-filesize --no-time --no-user --git";
      la = "ll --all";
      laa = "ls -lhamuU --total-size";
      lt = "ll -TR --level=2";
      lta = "la --tree --recurse --level=2";
    };
  };
}
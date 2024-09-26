{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        dpi-aware="no";
        prompt = "";
        icons-enabled = "yes";
        icon-theme="WhiteSur";
        terminal="foot";

        vertical-pad = 16;
        horizontal-pad=16;
      };
      border = {
        width=2;
        radius=20;
      };

    };
  };

  stylix.targets.fuzzel.enable = true;
}
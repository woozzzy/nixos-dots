{
  programs.foot = {
    enable = true;

    settings = {
      main = {
        term = "xterm-256color";
        initial-window-size-pixels = "960x594";
        pad = "25x25";
      };

      cursor = {
        style = "beam";
        beam-thickness = "1.5";
      };
    };
  };
}
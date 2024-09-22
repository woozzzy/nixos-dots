{ config, ... }:

{
  programs.wlogout = {
    enable = true;
    layout = [
      {
        "label" = "lock";
        "action" = "sleep 1; hyprlock";
        "text" = "Lock";
        "keybind" = "l";
      }
      {
        "label" = "logout";
        "action" = "sleep 1; hyprctl dispatch exit";
        "text" = "Exit";
        "keybind" = "e";
      }
      {
        label = "shutdown";
        action = "sleep 1; systemctl poweroff";
        text = "Shutdown";
        keybind = "s";
      }
      {
        "label" = "reboot";
        "action" = "sleep 1; systemctl reboot";
        "text" = "Reboot";
        "keybind" = "r";
      }
    ];
    style = ''
      * {
        font-family: Hack Nerd Font Mono;
      	font-size: 12px;
        background-image: none;
      	box-shadow: none;
        text-shadow: none;
        font-weight: bold;
      }
      window {
      	background-color: rgba(12, 12, 12, 0.7);
      }
      button {
      	color: #${config.stylix.base16Scheme.base05};
        background-repeat: no-repeat;
      	background-position: center;
      	background-size: 25%;
      	border-style: solid;
      	background-color: rgba(12, 12, 12, 0.3);
      	border: 3px solid #${config.stylix.base16Scheme.base05};
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      }
      button:focus,
      button:active,
      button:hover {
        color: #${config.stylix.base16Scheme.base0B};
        background-color: rgba(12, 12, 12, 0.5);
        border: 3px solid #${config.stylix.base16Scheme.base0B};
      }
      #lock {
      	margin: 10px;
      	border-radius: 20px;
      	background-image: image(url("icons/lock.png"));
      }
      #logout {
      	margin: 10px;
      	border-radius: 20px;
      	background-image: image(url("icons/logout.png"));
      }
      #shutdown {
      	margin: 10px;
      	border-radius: 20px;
      	background-image: image(url("icons/shutdown.png"));
      }
      #reboot {
      	margin: 10px;
      	border-radius: 20px;
      	background-image: image(url("icons/reboot.png"));
      }
    '';
  };
}

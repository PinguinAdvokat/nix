{pkgs, ...}: {
      programs.waybar = {
        enable = true;
        systemd = {
          enable = false;
          target = "graphical-session.target";
        };
        settings = [
{
  position = "bottom";
  height = 27;
  width = 900;
  spacing = 0;
  margin-bottom = 5;
  modules-left = [
    "battery"
    "bluetooth"
  ];
  modules-center = [
    "hyprland/workspaces"
  ];
  modules-right = [
    "tray"
    "pulseaudio"
    "hyprland/language"
    "clock"
  ];
  "custom/weather" = {
    format = "󰖞 {}";
    interval = 30;
    exec = "~/.config/hypr/themes/hypr_strws/weather.sh";
    tooltip = false;
  };
  "custom/foot" = {
    format = "";
    on-click = "exec foot --title=home -c ~/.config/hypr/themes/hypr_strws/foot.ini";
    tooltip = false;
  };
  battery = {
    states = {
      warning = 30;
      critical = 15;
    };
    format = "{icon}";
    format-full = "{icon}";
    format-charging = " ";
    format-plugged = " ";
    format-alt = "{time}";
    format-icons = ["" "" "" "" ""];
    tooltip-format = "{capacity}%";
  };
  bluetooth = {
    format-disabled = "󰂯";
    format-connected = "󰂯";
    format-off = "󰂯";
    format-on = "󰂯";
    format-connected-battery = "󰂯";
    tooltip-format-connected = "{device_enumerate}";
    tooltip-format-enumerate-connected = "{device_alias} 󰂄{device_battery_percentage}% {device_address}";
    on-click = "blueman-manager";
    tooltip = true;
  };
  "custom/nemo" = {
    format = "󰉋";
    on-click = "exec nemo home/";
    tooltip = false;
  };
  "hyprland/workspaces" = {
    format = "{icon}";
    on-click = "activate";
    format-icons = {
      "1" = "󰫍";
      "2" = "󰫍";
      "3" = "󰫍";
      "4" = "󰫍";
      "5" = "󰫍";
      "6" = "󰫍";
    };
    tooltip = false;
    persistent_workspaces = {
      "*" = 6;
    };
  };
  tray = {
    icon-size = 14;
    spacing = 15;
  };
  pulseaudio = {
    scroll-step = 1;
    format = "{icon}{volume}%";
    format-icons = {
      default = [
        " "
        " "
        " "
      ];
    };
    on-click = "pavucontrol";
  };
  "hyprland/language" = {
    format = "{}";
    format-en = "EN";
    format-ru = "RU";
  };
  clock = {
    tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
    format-alt = "{:%Y-%m-%d}";
  };
  escape = true;
  exec = "$HOME/.config/waybar/mediaplayer.py 2> /dev/null";
}
        ];
	style = ./style.css;
      };
}

{ pkgs, ... }:
let
  mod = "SUPER";
  ipc = "noctalia msg";
in {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "${mod},       T, exec, alacritty"
      "${mod},       Q, killactive,"
      "${mod} SHIFT, M, exit,"
      "${mod},       E, exec, nemo"
      "${mod},       F, togglefloating,"
      "${mod},       C, fullscreen,"
      "${mod},       D, exec, ${ipc} panel-toggle launcher"
      "${mod} SHIFT, W, exec, ${ipc} wallpaper-random"
      "${mod},       V, exec, ${ipc} panel-toggle clipboard"
      "${mod} SHIFT, Z, exec, zeditor"
      "${mod} SHIFT, F, exec, firefox"
      "${mod} SHIFT, T, exec, Telegram"
      "${mod} SHIFT, D, exec, discord"
      "${mod},       P, pin,"
      "${mod},       M, exec, bemoji -cn"
      "${mod},       V, exec, cliphist list | $menu --dmenu | cliphist decode | wl-copy"
      "${mod},       B, exec, pkill -SIGUSR2 waybar"
      "${mod} SHIFT, B, exec, pkill -SIGUSR1 waybar"
      "${mod},       L, exec, ${ipc} lockScreen lock"
      "${mod},       P, exec, hyprpicker -an"
      "${mod},       N, exec, swaync-client -t"
      ", Print, exec, grimblast --notify --freeze copysave area"
      "${mod} SHIFT, S, exec, grim -g \"$(slurp)\" - | swappy -f -"
      "CTRL SHIFT, ESCAPE, exec, missioncenter"


      # Moving focus
      "${mod}, left, movefocus, l"
      "${mod}, right, movefocus, r"
      "${mod}, up, movefocus, u"
      "${mod}, down, movefocus, d"

      # Moving windows
      "${mod} SHIFT, left,  swapwindow, l"
      "${mod} SHIFT, right, swapwindow, r"
      "${mod} SHIFT, up,    swapwindow, u"
      "${mod} SHIFT, down,  swapwindow, d"

      # Resizeing windows                   X  Y
      "${mod} CTRL, left,  resizeactive, -60 0"
      "${mod} CTRL, right, resizeactive,  60 0"
      "${mod} CTRL, up,    resizeactive,  0 -60"
      "${mod} CTRL, down,  resizeactive,  0  60"

      # Switching workspaces
      "${mod}, 1, exec, hyprsome workspace 1"
      "${mod}, 2, exec, hyprsome workspace 2"
      "${mod}, 3, exec, hyprsome workspace 3"
      "${mod}, 4, exec, hyprsome workspace 4"
      "${mod}, 5, exec, hyprsome workspace 5"
      "${mod}, 6, exec, hyprsome workspace 6"
      "${mod}, 7, exec, hyprsome workspace 7"
      "${mod}, 8, exec, hyprsome workspace 8"
      "${mod}, 9, exec, hyprsome workspace 9"
      "${mod}, 0, exec, hyprsome workspace 10"

      # Moving windows to workspaces
      "${mod} SHIFT, 1, exec, hyprsome move 1"
      "${mod} SHIFT, 2, exec, hyprsome move 2"
      "${mod} SHIFT, 3, exec, hyprsome move 3"
      "${mod} SHIFT, 4, exec, hyprsome move 4"
      "${mod} SHIFT, 5, exec, hyprsome move 5"
      "${mod} SHIFT, 6, exec, hyprsome move 6"
      "${mod} SHIFT, 7, exec, hyprsome move 7"
      "${mod} SHIFT, 8, exec, hyprsome move 8"
      "${mod} SHIFT, 9, exec, hyprsome move 9"
      "${mod} SHIFT, 0, exec, hyprsome move 10"

      # Global
      "CTRL SHIFT, M, pass, class:^(discord|discord-stable)$"
      "CTRL SHIFT, D, pass, class:^(discord|discord-stable)$"
    ];

    # Move/resize windows with mod + LMB/RMB and dragging
    bindm = [
      "${mod}, mouse:272, movewindow"
      "${mod}, mouse:273, resizewindow"
    ];

    # Laptop multimedia keys for volume and LCD brightness
    bindel = [
      ",XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute,      exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      "${mod}, bracketright, exec, brightnessctl s 10%+"
      "${mod}, bracketleft,  exec, brightnessctl s 10%-"
    ];

    # Audio playback
    bindl = [
      ", XF86AudioNext,  exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay,  exec, playerctl play-pause"
      ", XF86AudioPrev,  exec, playerctl previous"
    ];
  };
}

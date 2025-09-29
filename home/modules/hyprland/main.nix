{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = ",1600x900@60,auto,1";
      "$mainMod" = "SUPER";
      "$terminal" = "alacritty";
      "$fileManager" = "nautilus";
      "$menu" = "wofi";

      exec-once = [
        "hyprpanel"
        "wl-clipboard-history -t"
        "wl-paste --watch cliphist store"
        "wl-clip-persist --clipboard regular"
        "hyprctl setcursor Bibata-Modern-Ice 22"
        "systemctl --user start hyprpolkitagent"
        "gsettings set org.gnome.desktop.interface gtk-theme adw-gtk3"
        "gsettings set org.gnome.desktop.interface color-scheme matcha-gtk-theme"
        "waypaper --restore"
      ];


      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 0;
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";

        layout = "dwindle";
      };

      decoration = {
        rounding = 10;

        blur = {
          enabled = true;
          size = 8;
          passes = 3;
          new_optimizations = true;
        };

      };

      animations = {
        enabled = true;

        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        # bezier = "myBezier, 0.33, 0.82, 0.9, -0.08";

        animation = [
          "windows,     1, 7,  myBezier"
          "windowsOut,  1, 7,  default, popin 80%"
          "border,      1, 10, default"
          "borderangle, 1, 8,  default"
          "fade,        1, 7,  default"
          "workspaces,  1, 6,  default"
        ];
      };


      input = {
        kb_layout = "us,ru";
        kb_options = "grp:alt_shift_toggle";
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = true;
        workspace_swipe_forever	= true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      windowrule = [
        #programs rules

        "size 650 450, class:Alacritty"
        "float, class:Alacritty"

        "float, class:nemo"

        "float,class:org.telegram.desktop"
	"size 400 600,class:org.telegram.desktop"

        "float,class:org.pulseaudio.pavucontrol"
        "size 468 284,class:org.pulseaudio.pavucontrol"
        "move 835 576,class:org.pulseaudio.pavucontrol"

        "float, title:Картинка в картинке"

        "float,class:.blueman-manager-wrapped"
        "size 537 321,class:.blueman-manager-wrapped"
        "move 128 540,class:.blueman-manager-wrapped"

        "float,class:waypaper"
        "size 772 541,class:waypaper"
        "move 382 134,class:waypaper"

        "move 550 630,class:wofi"

        "float,class:YandexMusic"
        "size 466 739,class:YandexMusic"
     ];

      windowrulev2 = [

        "bordersize 0, floating:0, onworkspace:w[t1]"

        "float,class:(mpv)|(imv)|(showmethekey-gtk)"
        "move 990 60,size 900 170,pin,noinitialfocus,class:(showmethekey-gtk)"
        "noborder,nofocus,class:(showmethekey-gtk)"

        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"

        "opacity 0.0 override, class:class:xwaylandvideobridge"
        "noanim, class:class:xwaylandvideobridge"
        "noinitialfocus, class:class:xwaylandvideobridge"
        "maxsize 1 1, class:class:xwaylandvideobridge"
        "noblur, class:class:xwaylandvideobridge"
        "nofocus, class:class:xwaylandvideobridge"
      ];

    };
  };
}

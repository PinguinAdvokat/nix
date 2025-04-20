{pkgs, ...}: {
      programs.waybar = {
        enable = true;
        systemd = {
          enable = false;
          target = "graphical-session.target";
        };
        settings = ./waybar;
	style = ./style.css;
      };
}

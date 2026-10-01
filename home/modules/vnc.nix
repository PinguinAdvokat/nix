{ pkgs, ... }: {
  # VNC server for the Hyprland (Wayland) session.
  # Listens on 127.0.0.1:5900 only — access is meant to go through the SSH
  # tunnel (system/vnc-tunnel.nix), so no VNC-level password is set.
  systemd.user.services.wayvnc = {
    Unit = {
      Description = "Wayland VNC server (Hyprland session)";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };

    Install.WantedBy = [ "graphical-session.target" ];

    Service = {
      ExecStart = "${pkgs.wayvnc}/bin/wayvnc -o HDMI-A-1 -f 60 -v";
      Restart = "on-failure";
      RestartSec = 5;
    };
  };
}

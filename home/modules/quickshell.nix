{ pkgs, ... }: {
  home.packages = with pkgs; [
    quickshell
  ];

  # Optional: Configure quickshell to start automatically
  # systemd.user.services.quickshell = {
  #   Unit = {
  #     Description = "Quickshell";
  #     After = [ "graphical-session-pre.target" ];
  #     PartOf = [ "graphical-session.target" ];
  #   };
  #   Service = {
  #     Type = "simple";
  #     ExecStart = "${pkgs.quickshell}/bin/qs";
  #     Restart = "on-failure";
  #   };
  #   Install = {
  #     WantedBy = [ "graphical-session.target" ];
  #   };
  # };
}

{ pkgs, ... }:

{
  systemd.services.frpc = {
    description = "Automated Persistent frp Tunnel";

    wants = [ "network-online.target" ];
    after = [ "network-online.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      Type = "simple";

      User = "pinguin";

      ExecStart = "${pkgs.frp}/bin/frpc -c /home/pinguin/frpc.toml";

      Restart = "always";
      RestartSec = "10";
    };
  };
}

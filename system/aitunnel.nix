{ pkgs, ... }:

{
  systemd.services.ai-tunnel = {
    description = "Automated Persistent SSH Tunnel";
    
    # Ensure the service waits until the network is fully up
    wants = [ "network-online.target" ];
    after = [ "network-online.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      Type = "simple";
      
      # Substitute your actual user account so ssh can find your (~/.ssh/id_rsa) keys
      User = "pinguin"; 

      # -N: Do not execute a remote command (tunnel only)
      # -L: Forward local port 8080 to remote server's port 80
      # ServerAlive options act as a heartbeat to drop dead connections quickly
      ExecStart = "${pkgs.openssh}/bin/ssh -N -R 8069:127.0.0.1:8080 root@lapka.otsa.city";

      # Restart settings to make the tunnel resilient
      Restart = "always";
      RestartSec = "10";
    };
  };
}

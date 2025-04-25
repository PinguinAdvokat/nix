{ config, pkgs, ... }:

{
  services.sing-box = {
    enable = true;
    settings = {
  inbounds = [
    {
      type = "tun";
      address = [ "172.18.0.1/30" ];
      auto_route = true;
      strict_route = true;
    }
  ];
  outbounds = [
    {
      type = "vless";
      tag = "main-max";

      server = "185.239.141.180";
      server_port = 443;
      uuid = "42af25f1-6b2e-4349-8902-48e058169b4c";
      flow = "xtls-rprx-vision";
      tls = {
        enabled = true;
        server_name = "yahoo.com";
        utls = {
          enabled = true;
          fingerprint = "chrome";
        };
        reality = {
          enabled = true;
          public_key = "q0XOwfhGdF_w6Kk0u3l_yQCBomvFDq3NMBg7YwwqwHI";
          short_id = "bf3aa63501";
        };
      };
      packet_encoding = "xudp";
    }
  ];
  route = {
    final = "main-max";
    auto_detect_interface = true;
  };
};
};
}

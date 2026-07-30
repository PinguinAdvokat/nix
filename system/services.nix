{
  services.displayManager.ly.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  security.polkit.enable = true;
  services.udev.extraRules = ''
    KERNEL=="vmnet*", OWNER="root", GROUP="wheel", MODE="0660"
  '';

  services.openssh = {
    enable = true;
    openFirewall = true;
    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";
    };
};
}

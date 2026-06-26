{
  services.displayManager.ly.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.openssh.enable = true;

  security.polkit.enable = true;
  services.udev.extraRules = ''
    KERNEL=="vmnet*", OWNER="root", GROUP="wheel", MODE="0660"
  '';
}

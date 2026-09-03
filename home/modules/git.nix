{
  programs.git = {
    enable = true;
    settings.user = {
      name = "PinguinAdvokat";
      email = "pinguinadvokat@gmail.com";
    };
    signing = {
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOyxv5cz0gHONAm0Gj2/2oLF+Q/3rBk3A1GB/TxGXmIu pinguinadvokat@gmail.com";
      signByDefault = true;
    };
    extraConfig = {
      gpg.format = "ssh";
    };
  };
}

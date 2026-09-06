{
  programs.git = {
    enable = true;
    settings.user = {
      name = "PinguinAdvokat";
      email = "pinguinadvokat@gmail.com";
    };
    signing = {
      key = "/home/pinguin/.ssh/id_ed25519";
      signByDefault = true;
    };
    extraConfig = {
      gpg.format = "ssh";
    };
  };
}

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "PinguinAdvokat";
        email = "pinguinadvokat@gmail.com";
      };
      gpg.format = "ssh";
    };
  };
}

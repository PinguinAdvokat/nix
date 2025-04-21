{ pkgs, ... }: {
  gtk = {
    enable = true;
    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 22;
    };
    theme = {
      package = pkgs.adw-gtk3;
      name = "matcha-gtk-theme";
    };
    iconTheme = {
      name = "cat-mocha-lavender";
    };
  };
}

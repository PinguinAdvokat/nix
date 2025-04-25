{

  programs.zed-editor = {
    enable = true;
    userSettings = {
      buffer_font_family = "Cascadia Mono";
      theme = {
        mode = "dark";
        light = "One Light";
        dark = "One Dark";
      };
    };
    extensions = [
      "Catppuccin"
      "Catppuccin Icons"
      "Nix"
    ];
  };

}

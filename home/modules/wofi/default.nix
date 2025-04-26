{
  programs.wofi = {
    enable = true;
    settings = {
      width = 500;
      height = 220;
      x = 550;
      y = 630;
      columns = 2;
      hide_scroll = true;
      promt = "search";
      term = "alacritty";
      no_actions = true;
      allow_images = true;
      image_size = 25;
      normal_window = true;
    };
  };

  home.file.".config/wofi/wofi.css".source = ./wofi.css;
}

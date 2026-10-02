{ pkgs, ... }: {
  # stylix не должен перезаписывать тему и шрифт kitty
  stylix.targets.kitty.enable = false;

  programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Mocha";

    font = {
      package = pkgs.nerd-fonts.monaspace;
      name = "MonaspiceNe Nerd Font";
      size = 13;
    };

    settings = {
      window_padding_width = 8;

      cursor_blink_interval = 0;
      cursor_trail = 1;
      cursor_trail_decay = "0.1 0.2";
      cursor_trail_start_threshold = 5;

      editor = ".";
      confirm_os_window_close = 0;
    };
  };
}

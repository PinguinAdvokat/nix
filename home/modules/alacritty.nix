{ lib, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.7;

      font = {
        builtin_box_drawing = true;
        normal = {
          style = lib.mkForce "Bold";
        };
      };
    };
  };
}

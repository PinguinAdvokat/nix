{ lib, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.5;

      font = {
        builtin_box_drawing = true;
        normal = {
          style = lib.mkForce "Bold";
        };
      };
    };
  };
}

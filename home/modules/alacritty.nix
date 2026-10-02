{ lib, ... }: {
  programs.alacritty = {
    enable = false;
    settings = {
      font = {
        builtin_box_drawing = true;
        normal = {
          style = lib.mkForce "Bold";
        };
      };
    };
  };
}

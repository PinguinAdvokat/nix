{ pkgs, ... }: {
    fonts.packages = with pkgs; [
        font-awesome
        jetbrains-mono
        inter
        nerd-fonts.droid-sans-mono
    ];
    stylix.enable = true;
    stylix.autoEnable = true;
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    stylix.cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 22;
    };
    stylix.icons = {
      enable = true;
      package = pkgs.catppuccin-papirus-folders;
      dark = "Papirus-Dark";
    };
    stylix.polarity = "dark";
}

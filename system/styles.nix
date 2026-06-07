{ pkgs, ... }: {
    fonts.packages = with pkgs; [ 
        font-awesome
        jetbrains-mono
        inter
        nerd-fonts.droid-sans-mono
    ];
    stylix.enable = true;
    stylix.autoEnable = true;
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    stylix.cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 22;
    };
}
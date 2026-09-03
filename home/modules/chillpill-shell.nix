{ inputs, ... }:
{
  imports = [ inputs.chillpill-shell.homeManagerModules.default ];

  programs.chillpill-shell = {
    enable = true;
    settings = {
      clockFormat = "HH:mm";
      maxWorkspaces = 3;
      country = "RU";
      pillScale = 1.2;
    };
  };
}

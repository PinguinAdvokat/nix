{ pkgs, inputs, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  # configure options
  programs.noctalia = {
    enable = true;
    systemd.enable = true;
    settings = ./config.toml;
      #(builtins.fromJSON
        #(builtins.readFile ./settings.json));
  };
}

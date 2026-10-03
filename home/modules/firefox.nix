{

programs.firefox = {
    enable = true;
    profiles.default = {
      isDefault = true;
    };
  };

  stylix.targets.firefox = {
    enable = true;
    profileNames = [ "default" ];
  };

}

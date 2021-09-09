{ pkgs, options, config, lib, home-manager, ... }:

{
  options.user = lib.mkOption {
    type = lib.types.attrs;
    default = {};
  };
  config.home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.rain = lib.mkAliasDefinitions options.user;
  };

  config.users.users.rain = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ];
    shell = pkgs.fish;
  };

  # home manager can manage itself

  config.user.programs.home-manager.enable = true;

  # HM settings

  config.user.home.username = "rain";
  config.user.home.homeDirectory = "/home/rain";

  # Home version

  config.user.home.stateVersion = "21.05";
}

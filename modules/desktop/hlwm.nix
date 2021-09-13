{ config, ... }:

{
  services.xserver.windowManager.herbstluftwm = {
    enable = true;
    configFile = "/home/rain/dev/dotfiles/config/hlwm/auto";
  };
}

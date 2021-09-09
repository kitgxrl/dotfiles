{ config, ... }:

{
  services.xserver.windowManager.herbstluftwm = {
    enable = true;
    configFile = ../../config/hlwm/auto;
  };
}

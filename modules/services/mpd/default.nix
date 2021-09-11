{ config, user, ... }:

{
  user.services.mpd = {
    enable = true;
    network.port   = 23498; 

    musicDirectory = "/media/music/";

    extraConfig = ''
      auto_update "yes"
    '';
  };

  user.home.sessionVariables = { "MPD_PORT" = "23498"; };
}

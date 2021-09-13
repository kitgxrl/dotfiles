{ config, ... }:

{
  user.services.dunst = {
    enable = true;

    settings = {
      global = {
        geometry = "500x3-30+50";
        font = "Iosevka 11";
        frame_width = 3;
        markup = "full";
        format = "<b>%s</b>\\n%b";
        horizontal_padding = 10;
        max_icon_size = 100;
        shrink = true;
        padding = 10;
      };

      urgency_low = {
        frame_color = "#96a7c4";
        background = "#2E3440";
        foreground = "#ECEFF4";
      };

      urgency_normal = {
        frame_color = "#96a7c4";
        background = "#2E3440";
        foreground = "#ECEFF4";
      };

      urgency_critial = {
        frame_color = "#96a7c4";
        background = "#2E3440";
        foreground = "#ECEFF4";
      };
    };
  };
}

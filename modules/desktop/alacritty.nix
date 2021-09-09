{ config, ... }:

{
  user.programs.alacritty = {
    enable = true;
    settings = {
      import = [ "~/.config/alacritty/theme.yml" ];
      window.padding = {
        y = 20;
        x = 20;
      };

      font = {
        normal = {
          family = "Iosevka Nerd Font";
        };

        size = 12;
      };
    };
  };
}

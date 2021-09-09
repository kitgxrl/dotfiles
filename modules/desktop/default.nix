{ pkgs, config, ... }:

{
  imports = [ ./hlwm.nix ./alacritty.nix ];
  services.xserver.enable = true;

  fonts.fonts =  with pkgs; [
    noto-fonts noto-fonts-cjk noto-fonts-emoji
    nerdfonts
  ];

  user.home.packages = with pkgs; [
      feh        # Wallpaper
      xclip maim # Screenshots
      dmenu      # Launcher
  ];
}

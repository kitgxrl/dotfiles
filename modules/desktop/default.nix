{ pkgs, config, ... }:

{
  imports = [ ./hlwm.nix ./alacritty.nix ];
  services.xserver.enable = true;

  fonts.fonts =  with pkgs; [
    noto-fonts noto-fonts-cjk noto-fonts-emoji
    nerdfonts
  ];

  user.xsession.pointerCursor = {
    name    = "Quintom_Snow";
    size    = 16;
    package = pkgs.quintom-cursor-theme;
  };

  services.xserver.displayManager.lightdm.greeters.gtk.cursorTheme = {
    name    = "Quintom_Snow";
    size    = 16;
    package = pkgs.quintom-cursor-theme;
  };

  user.home.file.".icons/Quinton_Snow".source = "${pkgs.quintom-cursor-theme}/share/icons/Quintom_Snow/";
  user.home.file.".icons/default/index.theme".source = "${pkgs.quintom-cursor-theme}/share/icons/Quintom_Snow/cursor.theme";

  user.home.packages = with pkgs; [
      feh        # Wallpaper
      xclip maim # Screenshots
      rofi       # Launcher

      # Themeing

      nordic
      qogir-icon-theme
      lxappearance
  ];
}

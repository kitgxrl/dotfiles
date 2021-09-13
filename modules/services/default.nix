{ config, user, ... }:

{
  imports = [
    ./wireguard
    ./mpd
    ./dunst.nix
  ];

  # SSH Daemon
  services.openssh.enable = true;

  # Media server
  services.jellyfin = {
    enable = true;
    openFirewall = true;
  };

  # GPG Agent
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  user.services.gpg-agent = {
    enable = true;
    pinentryFlavor = "tty";
  };

  user.services.picom = {
    enable = true;
    backend = "glx";
    vSync = true;
    extraOptions = ''
    use-damage = true;
    xrender-sync-fence = true;
    '';
  };
}

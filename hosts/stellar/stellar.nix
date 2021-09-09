{ config, pkgs, ... }:

{
  nix = {
    package = pkgs.nixUnstable;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';

    binaryCaches = [
      "https://hydra.iohk.io"
      "https://nix-community.cachix.org"
    ];
    
    binaryCachePublicKeys = [
      "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  # Boot loader.. so I can actually boot into the system!
  boot.loader = {
    systemd-boot.enable = true;
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
  };

  # I like the internet
  networking = {
    hostName = "stellar";

    # I still dont understand this
    useDHCP = false;
    interfaces.enp3s0.useDHCP = true; 
  };

  # amerikkka
  i18n.defaultLocale = "en_US.UTF-8";

  # TTY shit ill never use
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  # I also like sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  system.stateVersion = "21.05";
}


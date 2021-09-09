{ config, user, ... }:

{
  # Shell

  user.programs.fish = {
    enable = true;
    promptInit = ''
      set -g fish_greeting
    '';
  };

  # Prompt

  user.programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      character = {
        success_symbol = "[➜ ](bold green)";
        error_symbol = "[➜ ](bold red)";
      };
    }; 
  };

  # direnv
  user.programs.direnv = {
    enable = true;
    enableFishIntegration = true;

    nix-direnv = {
      enable = true;
      enableFlakes = true;
    };
  };

}

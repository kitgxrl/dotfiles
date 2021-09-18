{ pkgs, ... }:

{
  imports = [
    ./shell.nix
    ./ssh.nix
    ./git.nix
    ./ncmpcpp.nix
  ];

  user.home.packages = with pkgs; [
    # Editors
    neovim-nightly

    ((emacsPackagesNgGen emacs).emacsWithPackages (epkgs: [
      epkgs.vterm
    ]))

    # Media

    qbittorrent
    ytmdl
    pavucontrol

    # Web

    chromium

    # Chat

    discord-canary

    # Tools
    ffmpeg
    mpc_cli
    cachix
    xdotool
    gcc
    gnumake
    cmake
    ripgrep
    fd

    # Misc / Libraries

    libnotify
    libtool
    libvterm
  ];

  user.programs.gpg.enable = true;
}

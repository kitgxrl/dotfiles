{ pkgs, ... }:

{
  imports = [
    ./shell.nix
    ./ssh.nix
    ./git.nix
    ./ncmpcpp.nix
  ];

  user.home.packages = with pkgs; [
    qbittorrent
    ytmdl
    discord-canary
    chromium
    neovim-nightly
    pavucontrol
    ueberzug
    ffmpeg
    mpc_cli
    cachix
    ((emacsPackagesNgGen emacs).emacsWithPackages (epkgs: [
      epkgs.vterm
    ]))
    pinentry-emacs
    ripgrep fd libtool libvterm # for doom-emacs primarily
    gcc gnumake cmake # build tools
  ];

  user.programs.gpg.enable = true;
}

{ pkgs, ... }:

{
  imports = [
    ./shell.nix
    ./ssh.nix
    ./git.nix
  ];

  user.home.packages = with pkgs; [
    qbittorrent
    discord-canary
    chromium
    neovim-nightly
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

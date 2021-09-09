{ pkgs, user, ... }:

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
    emacs
    ripgrep fd # for doom-emacs primarily
  ];

  user.programs.gpg.enable = true;
}

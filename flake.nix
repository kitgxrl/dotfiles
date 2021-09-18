{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  inputs.utils.url = "github:gytis-ivaskevicius/flake-utils-plus";

  inputs.hm.url = "github:nix-community/home-manager/release-21.05";
  inputs.hm.inputs.nixpkgs.follows = "nixpkgs";

  inputs.neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";

  outputs = inputs@{ self, nixpkgs, hm, neovim-nightly, utils }:

    utils.lib.mkFlake {
      inherit self inputs;

      channelsConfig.allowUnfree = true;
      
      sharedOverlays = [ 
        neovim-nightly.overlay
        (self: super: { discord-canary = super.discord-canary.overrideAttrs (_: { src = builtins.fetchTarball "https://dl-canary.discordapp.net/apps/linux/0.0.130/discord-canary-0.0.130.tar.gz"; });})
      ];

      hostDefaults.modules = [
        hm.nixosModules.home-manager
      ];

      hosts.stellar = {
        modules = [
          ./hosts/stellar/stellar.nix
          ./hosts/stellar/hardware.nix
          ./users/rain.nix

          ./modules/services
          ./modules/programs
          ./modules/desktop
        ];
      };
    };
}

{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  inputs.utils.url = "github:gytis-ivaskevicius/flake-utils-plus";

  inputs.hm.url = "github:nix-community/home-manager/release-21.05";
  inputs.hm.inputs.nixpkgs.follows = "nixpkgs";

  inputs.neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";
  inputs.doom-emacs.url = "github:vlaci/nix-doom-emacs";

  outputs = inputs@{ self, nixpkgs, hm, neovim-nightly, doom-emacs, utils }:

    utils.lib.mkFlake {
      inherit self inputs;

      channelsConfig.allowUnfree = true;
      
      sharedOverlays = [ neovim-nightly.overlay ];

      hostDefaults.modules = [
        hm.nixosModules.home-manager
      ];

      hosts.stellar = {
        specialArgs = { inherit doom-emacs; };
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

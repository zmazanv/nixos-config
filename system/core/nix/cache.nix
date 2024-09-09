# `https://cache.nixos.org/` and its public key are included in `substituters`
# and `trusted-public-keys` by default, which will be merged with the values here.
{lib, ...}: let
  caches = {
    nix-community = {
      doc = "https://nix-community.org/cache/";
      public-key = "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs=";
      url = "https://nix-community.cachix.org";
    };
  };
in {
  nix.settings = {
    substituters = lib.mapAttrsToList (_: cache: cache.url) caches;
    trusted-public-keys = lib.mapAttrsToList (_: cache: cache.public-key) caches;
  };
}

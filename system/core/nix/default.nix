{
  config,
  inputs,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./cache.nix
    ./home-manager.nix
    ./nh.nix
    ./nixpkgs.nix
  ];

  # `git` is needed for working with flakes.
  environment.systemPackages = [pkgs.git];

  nix = let
    flakeInputs = lib.filterAttrs (_: v: lib.isType "flake" v) inputs;
  in {
    package = pkgs.lix;

    # Pins all flake inputs to the system flake registry at `/etc/nix/registry.json`.
    #
    # Normally, Nix uses the global flake registry, which is from
    # `https://github.com/NixOS/flake-registry`, to resolve symbolic identifiers for
    # ambiguous flake references (e.g., "nixpkgs", "home-manager"). This registry does not
    # pin specific versions; instead, it just provides symbolic "aliases" to popular flakes,
    # allowing them to be referenced without needing to specify full URLs.
    #
    # Nix will redundantly fetch fresh versions of flakes, rather than using this flake's
    # inputs if present.
    #
    # This generates the system flake registry with all of this flake's inputs pinned,
    # including `self`. Through this, Nix will prioritise that registry for
    # symbolic identifier resolution before falling back to the global registry.
    registry = lib.mapAttrs (_: v: {flake = v;}) flakeInputs;

    # Adds inputs to `NIX_PATH` for legacy channel compatibility, ensuring that
    # the system flake registry defined above is used for resolving these inputs.
    nixPath = lib.mapAttrsToList (k: _: "${k}=flake:${k}") config.nix.registry;

    settings = {
      auto-optimise-store = true;
      builders-use-substitutes = true;

      experimental-features = [
        "nix-command"
        "flakes"
      ];

      trusted-users = [
        "root"
        "@wheel"
      ];
    };

    # Helper systems to offload build work to, filtering out the current host
    # to avoid errors.
    distributedBuilds = false;
    buildMachines = lib.filter (x: x.hostName != config.networking.hostName) [];
  };
}

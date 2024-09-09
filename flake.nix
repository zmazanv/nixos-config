{
  description = "My NixOS and Home Manager configuration flake";

  outputs = inputs: let
    systems = import inputs.systems;
  in {
    nixosConfigurations = import ./system;
    homeConfigurations = import ./home;
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-compat.url = "github:edolstra/flake-compat";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.systems.follows = "systems";
    };

    flatpaks.url = "github:GermanBread/declarative-flatpak/stable";

    nixos-hardware.url = "github:nixos/nixos-hardware";

    systems.url = "github:nix-systems/default-linux";
  };
}

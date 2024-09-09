# Nix Configurations

| Name                                   | Description                                                        |
| -------------------------------------- | ------------------------------------------------------------------ |
| [`default.nix`][__default__]           | Configurations for [`nix`][gh__nix]/[`lix`][git__lix] and related. |
| [`cache.nix`][__cache__]               | Additional Nix package binary caches.                              |
| [`home-manager.nix`][__home-manager__] | [`home-manager`][gh__home-manager] NixOS module set-up.            |
| [`nh.nix`][__nh__]                     | Configurations for [`nh`][gh__nh].                                 |
| [`nixpkgs.nix`][__nixpkgs__]           | Configurations for [`nixpkgs`][gh__nixpkgs].                       |

## Resources

### Nix

- [**Nix Reference Manual - _Nix
  Registry_**][nix-reference-manual__nix-registry]
- [**Home Manager Manual**][home-manager-manual]

### Options

- [**Nix Reference Manual - `nix.conf`**][nix-reference-manual__nix-registry]
- [`github:NixOS/nixpkgs/nixos/modules/config/flake.nix`][gh__nixpkgs__flake.nix]
- [`github:NixOS/nixpkgs/nixos/modules/config/nix.nix`][gh__nixpkgs__nix.nix]
- [`github:NixOS/nixpkgs/nixos/modules/config/nix-channel.nix`][gh__nixpkgs__nix-channel.nix]

### Lix

[**`lix`**][lix] is being used as the system Nix implementation.\
If interested, here are resources to learn more.

- [**Home**][lix]
- [**Git Repository**][git__lix]
- [**Lix Reference Manual**][lix-reference-manual]

<!---->

[__default__]: ./default.nix
[__cache__]: ./cache.nix
[__home-manager__]: ./home-manager.nix
[__nh__]: ./nh.nix
[__nixpkgs__]: ./nixpkgs.nix

<!---->

[gh__home-manager]: https://github.com/nix-community/home-manager
[gh__nix]: https://github.com/NixOS/nix
[gh__nixpkgs]: https://github.com/NixOS/nixpkgs
[gh__nh]: https://github.com/viperML/nh

<!---->

[gh__nixpkgs__flake.nix]:
  https://github.com/NixOS/nixpkgs/blob/nixos-unstable/nixos/modules/config/nix-flakes.nix
[gh__nixpkgs__nix.nix]:
  https://github.com/NixOS/nixpkgs/blob/nixos-unstable/nixos/modules/config/nix.nix
[gh__nixpkgs__nix-channel.nix]:
  https://github.com/NixOS/nixpkgs/blob/nixos-unstable/nixos/modules/config/nix-channel.nix

<!---->

[nix-reference-manual__nix.conf]:
  https://nix.dev/manual/nix/2.23/command-ref/conf-file
[nix-reference-manual__nix-registry]:
  https://nix.dev/manual/nix/2.23/command-ref/new-cli/nix3-registry

<!---->

[home-manager-manual]: https://nix-community.github.io/home-manager/

<!---->

[lix]: https://lix.systems/
[lix-reference-manual]: https://docs.lix.systems/manual/lix/stable/
[git__lix]: https://git.lix.systems/lix-project/lix

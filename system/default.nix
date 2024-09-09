{lib, ...}: {
  blancanieves = lib.nixosSystem {
    specialArgs = {};
    modules = [
      ./core
      ./hosts/blancanieves
    ];
  };

  obsidiana = lib.nixosSystem {
    specialArgs = {};
    modules = [
      ./core
      ./hosts/obsidiana
    ];
  };

  platona = lib.nixosSystem {
    specialArgs = {};
    modules = [
      ./core
      ./hosts/platona
    ];
  };
}

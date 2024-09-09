{
  programs.hyprland.enable = true;

  # Have Electron applications use Wayland.
  environment.variables.NIXOS_OZONE_WL = "1";
}

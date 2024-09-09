{
  programs.nh = {
    enable = true;

    clean = {
      enable = false;
      extraArgs = "--keep-since 30d";
    };
  };
}

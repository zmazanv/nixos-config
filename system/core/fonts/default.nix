{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = false;

    packages = with pkgs; [
      google-fonts

      inter

      jetbrains-mono

      liberation_ttf

      material-symbols

      nerdfonts

      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      noto-fonts-emoji-blob-bin
      noto-fonts-monochrome-emoji

      roboto
      roboto-mono
      roboto-slab
      roboto-serif
    ];
  };
}

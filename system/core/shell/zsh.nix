{
  programs.zsh = {
    enable = true;

    autosuggestions.enable = true;

    enableBashCompletion = true;

    syntaxHighlighting = {
      enable = true;
      highlighters = [
        "main"
        "brackets"
        "pattern"
      ];
      styles = {
        "alias" = "fg=magenta";
      };
    };
  };
}

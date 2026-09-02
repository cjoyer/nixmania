{
  flake.modules.nixos.gui_vesktop = {
    hm.programs.vesktop = {
      enable = true;

      vencord = {
        themes = {
          "midnight-vencord.theme" = ./themes/gruvbox/_midnight-vencord.theme.css;
        };

        settings = {
          enabledThemes = [
            "midnight-vencord.theme.css"
          ];
        };
      };
    };
  };
}

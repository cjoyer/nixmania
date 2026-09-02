{
  flake.modules.nixos.window-manager_niri = {
    config,
    lib,
    ...
  }: let
    cfg = config.stylix.enable or false;
    stx = config.lib.stylix.colors.withHashtag;
  in {
    hm = {
      stylix.targets.niri.enable = false;

      programs.niri.settings.layout = lib.mkIf cfg {
        focus-ring = {
          active = {color = stx.base0D;};
          inactive = {color = stx.base02;};
          urgent = {color = stx.base08;};
        };

        # Todo: make a color palette checker
        border = {
          active = {color = stx.base0E;}; # (base0D)
          inactive = {color = stx.base02;};
          urgent = {color = stx.base08;};
        };

        shadow = {
          color = stx.base00;
        };
      };
    };
  };
}

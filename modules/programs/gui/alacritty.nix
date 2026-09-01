{
  flake.modules.nixos.gui_alacritty = {lib, ...}: {
    hm.programs.alacritty = {
      enable = true;
      settings = {
        font = {
          size = lib.mkForce 11;
        };
      };
    };
  };
}

{
  flake.modules.nixos.theming_system-fonts = {pkgs, ...}: let
    regular = with pkgs; [
      corefonts
      dejavu_fonts
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      unifont
      twitter-color-emoji
    ];
    nerd-fonts = with pkgs.nerd-fonts; [
      symbols-only
    ];
    emoji = with pkgs; [
      twitter-color-emoji
    ];
  in {
    fonts.packages = regular ++ nerd-fonts ++ emoji;
  };
}

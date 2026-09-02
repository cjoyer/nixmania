{
  flake.modules.nixos.gui_zen-browser = {
    inputs,
    pkgs,
    ...
  }: {
    environment.systemPackages = [
      inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    ];
  };
}

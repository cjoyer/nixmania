{
  flake.modules.nixos.base = {...}: {
    boot.loader.grub.enable = true;
    boot.loader.grub.device = "/dev/sda";
    boot.loader.timeout = 0;
  };
}

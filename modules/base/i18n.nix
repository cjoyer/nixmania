{
  flake.modules.nixos.base = {...}: {
    time.timeZone = "Europe/Kyiv";
    i18n.defaultLocale = "en_US.UTF-8";
  };
}

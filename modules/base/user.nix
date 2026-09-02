{
  flake.modules.nixos.base = {...}: {
    users.users = {
      root.hashedPasswordFile = "/persist/passwd/root";

      neko = {
        isNormalUser = true;
        hashedPasswordFile = "/persist/passwd/bugs";
        extraGroups = [
          "wheel"
          "networkmanager"
          "audio"
          "video"
          "input"
          "storage"
        ];
      };
    };
  };
}

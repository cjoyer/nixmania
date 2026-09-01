{
  flake.modules.nixos.base = {...}: {
    users.users = {
      root.hashedPasswordFile = "/persistent/passwd/root";

      neko = {
        isNormalUser = true;
        hashedPasswordFile = "/persistent/passwd/bugs";
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

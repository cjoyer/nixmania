{
  flake.modules.nixos.TR-100-machine = {...}: {
    preservation = {
      enable = true;
      preserveAt."/persist" = {
        directories = [
          "/var/lib/AccountsService"
          "/var/lib/bluetooth"
          "/var/lib/libvirt"
          "/var/lib/NetworkManager"
          {
            directory = "/var/lib/nixos";
            inInitrd = true;
          }
          "/var/lib/noctalia-greeter"
          "/etc/NetworkManager/system-connections"
        ];
        files = [
          {
            file = "/etc/machine-id";
            inInitrd = true;
          }
        ];
        users.neko = {
          directories = [
            {
              directory = ".ssh";
              mode = "0700";
            }
            {
              directory = ".gnupg";
              mode = "0700";
            }
            {
              directory = ".local/share/keyrings";
              mode = "0700";
            }
            ".config/mozilla"
            ".mozilla"
            ".local/state/noctalia"
            ".local/share/bash"
            ".config/vesktop"
            ".config/Vencord"
            "Documents"
            "Music"
            "nixmania"
            "Pictures"
            "Projects"
            "Public"
            "Templates"
            "Videos"
          ];
        };
      };
    };
    systemd.suppressedSystemUnits = ["systemd-machine-id-commit.service"];

    boot.initrd.systemd.services.wipe-root = {
      description = "Wipe root subvolume before mounting (for preservation)";
      wantedBy = ["initrd.target"];
      before = ["sysroot.mount"];
      unitConfig.DefaultDependencies = "no";
      serviceConfig.Type = "oneshot";
      script = ''
        mkdir -p /btrfs_tmp
        mount /dev/disk/by-uuid/c66fda20-9f15-44cd-b848-6d3d402bd90a /btrfs_tmp -o subvol=/
        if [[ -e /btrfs_tmp/root ]]; then
          btrfs subvolume delete /btrfs_tmp/root
        fi
        btrfs subvolume create /btrfs_tmp/root
        umount /btrfs_tmp
      '';
    };
  };
}

{
  flake.modules.nixos.TR-100-machine = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      # CLI & TUI
      kew
      terminal-toys
      wget
      curl
      yt-dlp
      nvme-cli
      smartmontools

      # GUI
      onlyoffice-desktopeditors

      # DevOps tools
      docker
      kubernetes
      minikube
      virt-manager
      libvirt
    ];
  };
}

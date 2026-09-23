{ ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # this option helped when nixos install bootloader premuturly
  # boot.loader.systemd-boot.graceful = true;
}

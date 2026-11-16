{ pkgs, ... }:
{
  programs.wireshark = {
    enable = true;
    dumpcap.enable = true; # Allows apcturing network traffic
    package = pkgs.wireshark;
  };
}

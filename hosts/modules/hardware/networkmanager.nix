{ ... }:
{
  networking.networkmanager.enable = true;
  networking.firewall.allowedTCPPorts = [ 8123 ];
  # networking.hostName define it
}

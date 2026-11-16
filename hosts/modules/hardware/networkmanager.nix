{ ... }:
{
  networking.networkmanager.enable = true;
  networking.firewall.allowedTCPPorts = [ 
    8123 #ssh
    5678 #n8n
    8110 #paperless-ngx
    8493 #logseq_sync_server
    2765
    8666


  ];
  # networking.hostName define it
}

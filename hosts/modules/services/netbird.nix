{...}:
{
  services.netbird = {
    enable = true;
    clients.wt0 = {
      port = 10233;
      openFirewall = true;
      openInternalFirewall = true;
      autoStart = false;
    };
  };
}

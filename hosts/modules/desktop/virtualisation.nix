{ ... }:
{
  virtualisation.docker = {
    enable = true;
    daemon.settings = {
      default-address-pools = [
        {
          base = "172.30.0.0/16";
          size = 24;
        }
      ];
    };
    rootless = {
      enable = true;
      setSocketVariable=true;
    };
  };
}

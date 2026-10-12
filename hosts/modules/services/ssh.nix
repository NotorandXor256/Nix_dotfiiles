{ ... }:
{
  services.openssh = {
    enable = true;
    ports = [ 2222 ];
    settings = {
      AllowUsers = [ "oggy" ];
      PasswordAuthentication = true;
      KbdInteractiveAuthentication = false;
      MaxAuthTries = 5;

    };
  };
}

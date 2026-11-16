{ config, lib, pkgs, ... }:
{
  users.users.aavart = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "wireshark" ];
    hashedPassword = "$y$j9T$uNVg8bowHdcGeHoYE7a1J/$IM6LyPHICYlzqUFeO1fGHhVh/SYkftr6TVp3stlhlA0";
    packages = with pkgs; [
      tree
    ];
  };
}

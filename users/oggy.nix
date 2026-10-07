{ config, lib, pkgs, ... }:
{
  users.users.oggy = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    hashedPassword = "$y$j9T$QrA2M0q8gdSRDXPcL6W0q1$BrmD7NIUWffoDmjK7GooEVANBZwdo4tDMqckttTMtJA";
    packages = with pkgs; [
      tree
    ];
  };
}

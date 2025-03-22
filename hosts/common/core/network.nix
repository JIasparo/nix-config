{ hostname, ... }:

{
  config = {
    networking.hostName = "${hostname}";

    networking.networkmanager.enable = true;

    networking.firewall.enable = true;
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
  };
}

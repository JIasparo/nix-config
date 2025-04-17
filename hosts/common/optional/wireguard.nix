{ ... }:

{
  config = {
    networking.wg-quick.interfaces = {
      wg0 = {
        autostart = false;
        configFile = "/root/wireguard/wg0.conf";
      };
    };
  };
}

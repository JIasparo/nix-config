{ ... }:

{
  config = {
    networking.wg-quick.interfaces = {
      wg0 = {
        configFile = "/root/wireguard/wg0.conf";
      };
    };
  };
}

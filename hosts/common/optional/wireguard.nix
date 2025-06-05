{ ... }:

{
  config = {
    networking.wg-quick.interfaces = {
      wg0 = {
        /*
          Proton VPN:
          US 79 = San Jose, California
          US 111 = Los Angeles, California
        */
        autostart = false;
        configFile = "/root/wireguard/wg0.conf";
      };
    };
  };
}

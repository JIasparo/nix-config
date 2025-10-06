{ ... }:

{
  config = {
    services.pipewire.wireplumber.extraConfig = {
      # Name of the wireplumber config file
      "increase-headroom" = {
        # Contents of the wireplumber config file
        "monitor.alsa.rules" = [
          {
            matches = [
              { "node.name" = "~alsa_output.*"; }
            ];

            actions = {
              update-props = {
                "api.alsa.period-size" = 1024;
                "api.alsa.headroom" = 8192;
              };
            };
          }
        ];
      };
    };
  };
}

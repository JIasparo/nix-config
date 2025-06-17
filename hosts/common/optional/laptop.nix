{ ... }:

{
  config = {
    services = {
      # Prevents overheating on Intel CPUs.
      thermald.enable = true;

      auto-cpufreq = {
        enable = true;

        settings = {
          battery = {
            governor = "powersave";
            turbo = "never";
          };

          charger = {
            governor = "performance";
            turbo = "auto";
          };
        };
      };
    };
  };
}

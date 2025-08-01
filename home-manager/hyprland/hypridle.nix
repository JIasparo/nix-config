{ ... }:

{
  config = {
    services.hypridle = {
      enable = true;
      settings = {

        general = {
          lock_cmd = "pidof hyprlock || hyprlock";
          before_sleep_cmd = "loginctl lock-session";
          after_sleep_cmd = "hyprctl dispatch dpms on";
        };

        listener = [
          {
            # lock the screen after 10 minutes of inactivity
            timeout = 600;
            on-timeout = "loginctl lock-session";
          }

          {
            # Turn off monitor(s) after 15 minutes of inactivity
            timeout = 900;
            on-timeout = "hyprctl dispatch dpms off";
            on-resume = "hyprctl dispatch dpms on";
          }

          {
            # Suspend PC after 20 minutes of inactivity
            timeout = 1200;
            on-timeout = "systemctl suspend";
          }
        ];
      };
    };
  };
}

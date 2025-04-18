{ lib, pkgs, ... }:

{
  config = {
    services.greetd = {
      enable = true;

      settings = {
        default_session = {
          command = "${lib.getExe pkgs.greetd.tuigreet} --time --cmd Hyprland";
          user = "greeter";
        };
      };
    };
  };
}
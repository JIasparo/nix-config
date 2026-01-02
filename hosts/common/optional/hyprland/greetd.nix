{ lib, pkgs, ... }:

{
  config = {
    services.greetd = {
      enable = true;

      settings = {
        default_session = {
          command = "${lib.getExe pkgs.tuigreet} --time --cmd start-hyprland";
          user = "greeter";
        };
      };
    };
  };
}
{ ... }:

{
  imports = [
    ./blue-yeti.nix
  ];

  config = {
    services.easyeffects = {
      # Preset to use when starting application.
      preset = "blue-yeti"; # Use the name of the desired easyeffects config file.
    };
  };
}

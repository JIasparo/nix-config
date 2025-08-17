{ ... }:

{
  imports = [
    ./blue-yeti.nix
  ];

  config = {
    services.easyeffects = {
      preset = "blue-yeti"; # Preset to use when starting application.
    };
  };
}

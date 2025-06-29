{ inputs, configpath, ... }:

{
  config = {
    # Enable flakes
    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    # Set the $NIX_PATH env to follow flake.nix
    nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];

    # Garbage collection
    nix.optimise.automatic = true;
    nix.gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 4d";
    };

    # Auto Upgrades
    system.autoUpgrade = {
      enable = true;
      dates = "daily";
      flake = configpath;
      flags = [
        #
      ];
    };

    # Timezone/localization
    time.timeZone = "America/New_York";
    i18n.defaultLocale = "en_US.UTF-8";

    # Read documentation at man configuration.nix or https://nixos.org/nixos/options.html before changing this value.
    system.stateVersion = "24.11"; # Did you read the comment?
  };
}

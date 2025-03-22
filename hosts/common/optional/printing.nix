{ pkgs, ... }:

{
  config = {
    services.printing = {
      enable = true;

      # Some printers might need additional drivers.
      drivers = with pkgs; [
        # Add additional printer drivers here:
      ];
    };
  };
}

{ pkgs, ... }:

{
  config = {
    services.printing.enable = true;

    # Some printers might need additional drivers.
    services.printing.drivers = with pkgs; [
      # Add additional printer drivers here:
    ];
  };
}

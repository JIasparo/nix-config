{ pkgs, ... }:

{
  config = {
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # System-wide packages for all machines 
    environment.systemPackages = with pkgs; [
      #
    ];
  };
}

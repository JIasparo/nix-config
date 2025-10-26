{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      bottles.override { removeWarningPopup = true; }
    ];
  };
}

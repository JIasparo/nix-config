{ pkgs, ... }:

{
  config = {
    home.packages = [
      (pkgs.bottles.override { removeWarningPopup = true; })
    ];
  };
}

{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      nemo
    ];
  };
}

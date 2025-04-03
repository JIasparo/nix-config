{ pkgs, ... }:

{
  config = {
    programs.btop = {
      enable = true;
      package = pkgs.btop-cuda; # btop-cuda for Nvidia GPUs | btop-rocm for AMD GPUs

      settings = {
        shown_boxes = "proc cpu mem net gpu0";
      };
    };
  };
}

{ pkgs, ... }:

{
  config = {
    programs.btop = {
      enable = true;
      package = pkgs.btop-cuda; # btop-cuda for Nvidia GPUs | btop-rocm for AMD GPUs

      settings = {
        proc_mem_bytes = true; # Show process memory as bytes instead of percent.
        proc_sorting = "memory"; # Processes sorting ("pid", "program", "arguments", "threads", "user", "memory", "cpu lazy": Sorts top process over time, "cpu direct": Updates top process directly).
        shown_boxes = "proc cpu mem net gpu0"; # Manually set which boxes to show.
        rounded_corners = false; # Whether boxes have rounded corners.
      };
    };
  };
}

{ ... }:

{
  config = {
    wayland.windowManager.niri.settings._children = [
      {
        workspace = {
          _args = [ "workspace-01" ];
          open-on-output = "DP-1";
        };
      }

      {
        workspace = {
          _args = [ "workspace-02" ];
          open-on-output = "DP-1";
        };
      }

      {
        workspace = {
          _args = [ "workspace-03" ];
          open-on-output = "DP-1";
        };
      }

      {
        workspace = {
          _args = [ "workspace-04" ];
          open-on-output = "DP-1";
        };
      }

      {
        workspace = {
          _args = [ "workspace-05" ];
          open-on-output = "DP-1";
        };
      }

      {
        workspace = {
          _args = [ "workspace-06" ];
          open-on-output = "DP-1";
        };
      }

      {
        workspace = {
          _args = [ "workspace-07" ];
          open-on-output = "DP-2";
        };
      }

      {
        workspace = {
          _args = [ "workspace-08" ];
          open-on-output = "DP-2";
        };
      }

      {
        workspace = {
          _args = [ "workspace-09" ];
          open-on-output = "DP-2";
        };
      }

      {
        workspace = {
          _args = [ "workspace-10" ];
          open-on-output = "DP-2";
        };
      }
    ];
  };
}

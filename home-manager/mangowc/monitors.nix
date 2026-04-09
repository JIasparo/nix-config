{ ... }:

{
  config = {
    wayland.windowManager.mango.settings = {
      /*
        monitorrule = ["name:Values,Parameter:Values,Parameter:Values"];
        
        Rotating a monitor
        ["...,rr:x"], where x =
        0 -> no transform
        1 -> 90 degrees counter-clockwise
        2 -> 180 degrees counter-clockwise
        3 -> 270 degrees counter-clockwise
        4 -> 180 degrees vertical flip
        5 -> flip + 90 degrees counter-clockwise
        6 -> flip + 180 degrees counter-clockwise
        7 -> flip + 270 degrees counter-clockwise
      */
      monitorrule = [
        # Dell Inc. Dell S2716DG
        "name:DP-2,width:2560,height:1440,refresh:144,x:0,y:0,scale:1,vrr:0,rr:0"
        # Acer Technologies ED320QR S
        "name:DP-1,width:1920,height:1080,refresh:144,x:2560,y:,scale:1,vrr:0,rr:0"
      ];
    };
  };
}

{ ... }:

{
  config = {
    wayland.windowManager.mango.settings = {
      tagrule = [
        "id:1,layout_name:scroller"
        "id:2,layout_name:scroller"
        "id:3,layout_name:scroller"
        "id:4,layout_name:scroller"
        "id:5,layout_name:scroller"
        "id:6,layout_name:scroller"
        "id:7,layout_name:scroller"
        "id:8,layout_name:scroller"
        "id:9,layout_name:scroller"
      ];

      windowrule = [
        #"isnamedscratchpad:1,width:1920,height:1080,title:password-manager"
      ];

      layerrule = [
        #"noanim:1,layer_name:rofi"
      ];
    };
  };
}

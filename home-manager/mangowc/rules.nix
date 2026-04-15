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

      # mmsg -w -c # Watch focused client appid and title.
      windowrule = [
        # Instant Messenger rules
        "monitor:name:DP-2,tags:8,appid:^(discord)$"

        # Game launcher rules
        "monitor:name:DP-1,tags:4,appid:^(steam)$"
        "monitor:name:DP-1,tags:4,appid:^(heroic)$"

        # Game rules
        "monitor:name:DP-1,tags:5,appid:^(steam_app_\\d+)$"
        "isfullscreen:1,noblur:1,focused_opacity:1,appid:^(steam_app_\\d+)$"
        "monitor:name:DP-1,tags:5,appid:^(cs2)$"
        "isfullscreen:1,noblur:1,focused_opacity:1,appid:^(cs2)$"
        
        # Recording rules
        "monitor:name:DP-2,tags:9,appid:^(com.obsproject.Studio)$"

        # Terminal rules
        "isterm:1,appid:^(kitty)$"
        
        # Scratchpad rules
        "isnamedscratchpad:1,appid:^(Bitwarden)$"
      ];

      layerrule = [
        #"noanim:1,layer_name:rofi"
      ];
    };
  };
}

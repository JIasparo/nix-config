{ config, lib, ... }:

{
  config = {
    programs.fastfetch.settings = {

      logo = let 
        bottom-left-color = "${config.stylix.base16Scheme.base08}";
        middle-left-color = "${config.stylix.base16Scheme.base09}";
        top-left-color = "${config.stylix.base16Scheme.base0A}";
        top-right-color = "${config.stylix.base16Scheme.base0B}";
        middle-right-color = "${config.stylix.base16Scheme.base0C}";
        bottom-right-color = "${config.stylix.base16Scheme.base0D}";
        
        bottom-left = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 bottom-left-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 bottom-left-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 bottom-left-color))}";
          };
        middle-left = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 middle-left-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 middle-left-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 middle-left-color))}";
          };
        top-left = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 top-left-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 top-left-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 top-left-color))}";
          };
        top-right = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 top-right-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 top-right-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 top-right-color))}";
          };
        middle-right = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 middle-right-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 middle-right-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 middle-right-color))}";
          };
        bottom-right = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 bottom-right-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 bottom-right-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 bottom-right-color))}";
          };
      in{
        type = "data";
        source = ''
          [38;2;${top-left.r};${top-left.g};${top-left.b}m       ◢██◣[38;2;${top-right.r};${top-right.g};${top-right.b}m   ◥███◣  ◢██◣
          [38;2;${top-left.r};${top-left.g};${top-left.b}m       ◥███◣[38;2;${top-right.r};${top-right.g};${top-right.b}m   ◥███◣◢███◤
          [38;2;${top-left.r};${top-left.g};${top-left.b}m        ◥███◣[38;2;${top-right.r};${top-right.g};${top-right.b}m   ◥██████◤
          [38;2;${top-left.r};${top-left.g};${top-left.b}m    ◢████████████[48;2;${top-right.r};${top-right.g};${top-right.b}m◣[0m[38;2;${top-right.r};${top-right.g};${top-right.b}m████◤[38;2;${middle-right.r};${middle-right.g};${middle-right.b}m   ◢◣
          [38;2;${top-left.r};${top-left.g};${top-left.b}m   ◢██████████████[48;2;${top-right.r};${top-right.g};${top-right.b}m◣[0m[38;2;${top-right.r};${top-right.g};${top-right.b}m███◣[38;2;${middle-right.r};${middle-right.g};${middle-right.b}m  ◢██◣
          [38;2;${middle-left.r};${middle-left.g};${middle-left.b}m        ◢███◤      [38;2;${top-right.r};${top-right.g};${top-right.b}m◥███◣[38;2;${middle-right.r};${middle-right.g};${middle-right.b}m◢███◤
          [38;2;${middle-left.r};${middle-left.g};${middle-left.b}m       ◢███◤        [38;2;${top-right.r};${top-right.g};${top-right.b}m◥██[48;2;${middle-right.r};${middle-right.g};${middle-right.b}m◤[0m[38;2;${middle-right.r};${middle-right.g};${middle-right.b}m███◤
          [38;2;${middle-left.r};${middle-left.g};${middle-left.b}m◢█████████◤          [38;2;${top-right.r};${top-right.g};${top-right.b}m◥[48;2;${middle-right.r};${middle-right.g};${middle-right.b}m◤[0m[38;2;${middle-right.r};${middle-right.g};${middle-right.b}m████████◣
          [38;2;${middle-left.r};${middle-left.g};${middle-left.b}m◥████████[48;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m◤[0m[38;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m◣          [38;2;${middle-right.r};${middle-right.g};${middle-right.b}m◢█████████◤
          [38;2;${middle-left.r};${middle-left.g};${middle-left.b}m    ◢███[48;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m◤[0m[38;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m██◣        [38;2;${middle-right.r};${middle-right.g};${middle-right.b}m◢███◤
          [38;2;${middle-left.r};${middle-left.g};${middle-left.b}m   ◢███◤[38;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m◥███◣      [38;2;${middle-right.r};${middle-right.g};${middle-right.b}m◢███◤
          [38;2;${middle-left.r};${middle-left.g};${middle-left.b}m   ◥██◤  [38;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m◥███[48;2;${bottom-right.r};${bottom-right.g};${bottom-right.b}m◣[0m[38;2;${bottom-right.r};${bottom-right.g};${bottom-right.b}m██████████████◤
          [38;2;${middle-left.r};${middle-left.g};${middle-left.b}m    ◥◤   [38;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m◢████[48;2;${bottom-right.r};${bottom-right.g};${bottom-right.b}m◣[0m[38;2;${bottom-right.r};${bottom-right.g};${bottom-right.b}m████████████◤
          [38;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m        ◢██████◣[38;2;${bottom-right.r};${bottom-right.g};${bottom-right.b}m   ◥███◣
          [38;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m       ◢███◤◥███◣[38;2;${bottom-right.r};${bottom-right.g};${bottom-right.b}m   ◥███◣
          [38;2;${bottom-left.r};${bottom-left.g};${bottom-left.b}m       ◥██◤  ◥███◣[38;2;${bottom-right.r};${bottom-right.g};${bottom-right.b}m   ◥██◤
        '';
        
        padding = {
          top = 1;
          left = 3;
          right = 3;
        };
      };
    };
  };
}

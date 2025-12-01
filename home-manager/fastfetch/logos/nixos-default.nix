{ ... }:

{
  config = {
    programs.fastfetch.settings = {

      logo = let 
        bottom-left={r = "77"; g = "111"; b = "183";};
        middle-left={r = "119"; g = "182"; b = "225";};
        top-left={r = "77"; g = "111"; b = "183";};
        top-right={r = "119"; g = "182"; b = "225";};
        middle-right={r = "77"; g = "111"; b = "183";};
        bottom-right={r = "119"; g = "182"; b = "225";};
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

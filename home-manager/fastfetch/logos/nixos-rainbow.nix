{ ... }:

{
  config = {
    programs.fastfetch.settings = {

      logo = let 
        bottom-left={r = "193"; g = "1"; b = "0";}; # Red: #C10100
        middle-left={r = "255"; g = "103"; b = "5";}; # Orange: #ff6705
        top-left={r = "253"; g = "176"; b = "11";}; # Yellow: #FDB00B
        top-right={r = "2"; g = "155"; b = "59";}; # Green: #029B3B
        middle-right={r = "0"; g = "136"; b = "204";}; # Blue: #0088CC
        bottom-right={r = "90"; g = "55"; b = "187";}; # Violet: #5A37BB
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

{ ... }:

{
  config = {
    programs.fastfetch.settings = {

      logo = let 
        bottom-left={r = "91"; g = "206"; b = "250";}; # Blue: #5BCEFA
        middle-left={r = "245"; g = "169"; b = "184";}; # Pink: #F5A9B8
        top-left={r = "255"; g = "255"; b = "255";}; # White: #FFFFFF
        top-right={r = "91"; g = "206"; b = "250";}; # Blue: #5BCEFA
        middle-right={r = "245"; g = "169"; b = "184";}; # Pink: #F5A9B8
        bottom-right={r = "255"; g = "255"; b = "255";}; # White: #FFFFFF
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

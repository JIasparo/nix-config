{ ... }:

{
  config = {
    programs.fastfetch.settings = {

      logo = {
        type = "data";
        source = ''
          [38;2;224;213;0m       ◢██◣[38;2;255;244;48m   ◥███◣  ◢██◣
          [38;2;224;213;0m       ◥███◣[38;2;255;244;48m   ◥███◣◢███◤
          [38;2;224;213;0m        ◥███◣[38;2;255;244;48m   ◥██████◤
          [38;2;224;213;0m    ◢████████████[48;2;255;244;48m◣[0m[38;2;255;244;48m████◤[38;2;224;213;0m   ◢◣
          [38;2;214;214;214m   ◢██████████████[48;2;255;255;255m◣[0m[38;2;255;255;255m███◣[38;2;214;214;214m  ◢██◣
          [38;2;255;255;255m        ◢███◤      ◥███◣[38;2;214;214;214m◢███◤
          [38;2;255;255;255m       ◢███◤        ◥██[48;2;214;214;214m◤[0m[38;2;214;214;214m███◤
          [38;2;255;255;255m◢█████████◤          ◥[48;2;214;214;214m◤[0m[38;2;214;214;214m████████◣
          [38;2;155;89;209m◥████████[48;2;121;48;176m◤[0m[38;2;121;48;176m◣          ◢█████████◤
          [38;2;155;89;209m    ◢███[48;2;121;48;176m◤[0m[38;2;121;48;176m██◣        ◢███◤
          [38;2;155;89;209m   ◢███◤[38;2;121;48;176m◥███◣      ◢███◤
          [38;2;155;89;209m   ◥██◤  [38;2;121;48;176m◥███[48;2;155;89;209m◣[0m[38;2;155;89;209m██████████████◤
          [38;2;20;20;20m    ◥◤   [38;2;10;10;10m◢████[48;2;20;20;20m◣[0m[38;2;20;20;20m████████████◤
          [38;2;10;10;10m        ◢██████◣[38;2;20;20;20m   ◥███◣
          [38;2;10;10;10m       ◢███◤◥███◣[38;2;20;20;20m   ◥███◣
          [38;2;10;10;10m       ◥██◤  ◥███◣[38;2;20;20;20m   ◥██◤
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

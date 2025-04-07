{ config, ... }:

{
  config = {
    programs.rofi = {

      extraConfig = {
        modi = "drun,window";
        show-icons = true;
        display-drun = "apps";
        display-window = "windows";
        drun-display-format = "{name}";
        window-format = "{w} · {c} · {t}";
      };

      theme =
        let
          inherit (config.lib.formats.rasi) mkLiteral;
        in
        {
          "window" = {
            transparency = "real";
            location = mkLiteral "center";
            anchor = mkLiteral "center";
            fullscreen = false;
            width = mkLiteral "600px";
            x-offset = mkLiteral "0px";
            y-offset = mkLiteral "0px";
            # properties for all widgets
            enabled = true;
            margin = mkLiteral "0px";
            padding = mkLiteral "0px";
            border = mkLiteral "2px solid";
            border-radius = mkLiteral "10px";
            cursor = "default";
          };

          "mainbox" = {
            enabled = true;
            spacing = mkLiteral "10px";
            margin = mkLiteral "0px";
            padding = mkLiteral "30px";
            border = mkLiteral "0px solid";
            border-radius = mkLiteral "0px 0px 0px 0px";
            children = [
              "inputbar"
              "message"
              "listview"
            ];
          };

          "inputbar" = {
            enabled = true;
            spacing = mkLiteral "10px";
            margin = mkLiteral "0px";
            padding = mkLiteral "0px";
            border = mkLiteral "0px solid";
            border-radius = mkLiteral "0px";
            children = [
              "textbox-prompt-colon"
              "entry"
              "mode-switcher"
            ];
          };

          "prompt" = {
            enabled = true;
          };

          "textbox-prompt-colon" = {
            enabled = true;
            padding = mkLiteral "5px 0px";
            expand = false;
            str = "";
          };

          "entry" = {
            enabled = true;
            padding = mkLiteral "5px 0px";
            cursor = mkLiteral "text";
            placeholder = "Search...";
          };

          "num-filtered-rows" = {
            enabled = true;
            expand = false;
          };

          "textbox-num-sep" = {
            enabled = true;
            expand = false;
            str = "/";
          };

          "num-rows" = {
            enabled = true;
            expand = false;
          };

          "case-indicator" = {
            enabled = true;
          };

          /**
            ***----- Listview -----****
          */
          "listview" = {
            enabled = true;
            columns = 1;
            lines = 8;
            cycle = true;
            dynamic = true;
            scrollbar = true;
            layout = mkLiteral "vertical";
            reverse = false;
            fixed-height = true;
            fixed-columns = true;
            spacing = mkLiteral "5px";
            margin = mkLiteral "0px";
            padding = mkLiteral "0px";
            border = mkLiteral "0px solid";
            border-radius = mkLiteral "0px";
            cursor = "default";
          };

          "scrollbar" = {
            handle-width = mkLiteral "5px";
            border-radius = mkLiteral "10px";
          };

          /**
            ***----- Elements -----****
          */
          "element" = {
            enabled = true;
            spacing = mkLiteral "10px";
            margin = mkLiteral "0px";
            padding = mkLiteral "5px 10px";
            border = mkLiteral "0px solid";
            border-radius = mkLiteral "10px";
            cursor = mkLiteral "pointer";
          };

          "element-icon" = {
            size = mkLiteral "24px";
          };

          "element-text" = {
            vertical-align = mkLiteral "0.5";
            horizontal-align = mkLiteral "0.0";
          };

          /**
            ***----- Mode Switcher -----****
          */
          "mode-switcher" = {
            enabled = true;
            spacing = mkLiteral "10px";
            margin = mkLiteral "0px";
            padding = mkLiteral "0px";
            border = mkLiteral "0px solid";
            border-radius = mkLiteral "0px";
          };

          "button" = {
            padding = mkLiteral "5px 10px";
            border = mkLiteral "0px solid";
            border-radius = mkLiteral "10px";
            cursor = mkLiteral "pointer";
          };

          /**
            ***----- Message -----****
          */
          "message" = {
            enabled = true;
            margin = mkLiteral "0px";
            padding = mkLiteral "0px";
            border = mkLiteral "0px solid";
            border-radius = mkLiteral "0px 0px 0px 0px";
          };

          "textbox" = {
            padding = mkLiteral "8px 10px";
            border = mkLiteral "0px solid";
            border-radius = mkLiteral "10px";
            vertical-align = mkLiteral "0.5";
            horizontal-align = mkLiteral "0.0";
            highlight = mkLiteral "none";
            blink = true;
            markup = true;
          };

          "error-message" = {
            padding = mkLiteral "10px";
            border = mkLiteral "2px solid";
            border-radius = mkLiteral "10px";
          };
        };
    };
  };
}

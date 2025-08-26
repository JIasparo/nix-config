{ ... }:

{
  config = {
    services.easyeffects.extraPresets = {
      blue-yeti = {
        input = {
          blocklist = [ ];

          "plugins_order" = [
            "rnnoise#0"
            "speex#0"
          ];

          "rnnoise#0" = {
            bypass = false;
            "model-name" = "";

            "enable-vad" = true;
            "vad-thres" = 50.0;
            wet = 0.0;
            release = 20.0;

            "input-gain" = 0.0;
            "output-gain" = 0.0;
          };

          "speex#0" = {
            bypass = false;

            "enable-denoise" = true;
            "noise-suppression" = -70;

            "enable-agc" = false;
            "enable-dereverb" = false;

            "vad" = {
              enable = true;

              "probability-start" = 95;
              "probability-continue" = 90;
            };

            "input-gain" = 0.0;
            "output-gain" = 0.0;
          };
        };
      };
    };
  };
}

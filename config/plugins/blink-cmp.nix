{
  plugins = {
    blink-cmp = {
      enable = true;  
      settings = {
        appearance = {
          nerd_font_variant = "normal";
          use_nvim_cmp_as_default = true;
        };
        fuzzy = {
          prebuilt_binaries.download = true;
        };
        completion = {
          accept = {
            auto_brackets = {
              enabled = true;
              semantic_token_resolution = {
                enabled = false;
              };
            };
          };
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 500;
          };
        };
        keymap = {
          preset = "super-tab";
        };
        signature = {
          enabled = true;
        };
        sources = {
          cmdline = [ ];
          default = [
            "lsp"
            "path"
            "buffer"
            "copilot"
          ];
          providers = {
            buffer = {
              score_offset = -7;
            };
            lsp = {
              enabled = true;
            };
            copilot = {
              async = true;
              module = "blink-cmp-copilot";
              name = "copilot";
              score_offset = 100;
            };
          };
        };
      }; 
    };
    
    # Enable blink-cmp-copilot as a native nixvim plugin
    blink-cmp-copilot = {
      enable = true;
    };
  };
}

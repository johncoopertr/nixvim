{ pkgs, ... }: {
  plugins.blink-cmp = {
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
        providers = {
          buffer = {
            score_offset = -7;
          };
          lsp = {
            enabled = true;
          };
          copilot = {
            enabled = true;
            module = "blink-cmp-copilot";
            score_offset = 100;
          };
        };
      };
    }; 
  };
  
  # Add blink-cmp-copilot plugin for copilot integration
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = pkgs.vimUtils.buildVimPlugin {
        pname = "blink-cmp-copilot";
        version = "2024-12-11";
        src = pkgs.fetchFromGitHub {
          owner = "giuxtaposition";
          repo = "blink-cmp-copilot";
          rev = "4c66aef17095fb585943f88ee094e6c45798a5c1";
          sha256 = "sha256-h8fYW/FmobHSfV1eufUk6N9fmKVAOLPvq/0h/FA4da4=";
        };
      };
    }
  ];
}

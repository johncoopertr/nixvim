{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        rust_analyzer = {
          enable = true;
          installRustc = false;
          installCargo = false;
        };
        html = {
          enable = true;
          extraOptions = {
            filetypes = [ "html" "rust" ];
            providerClient = {
              customData = [
                {
                  fileMatch = [ "*.rs" ];
                  pattern = {
                    "*.rs" = "html!\\s*\\{[\\s\\S]*?\\}";
                  };
                }
              ];
            };
          };
        };
        texlab.enable = true;
        gopls.enable = true;
        dockerls.enable = true;
        bashls.enable = true;
        nil_ls.enable = true;
        lua_ls.enable = true;
        pyright.enable = true;
      };
    };
    treesitter = {
      enable = true;
      settings = {
        ensure_installed = [ "html" "rust" ];
      };
    }; 
    lsp-lines = {
      enable = true;
    };
  };
}

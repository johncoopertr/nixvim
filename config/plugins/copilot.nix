{
  plugins = {
    # GitHub Copilot integration
    copilot-lua = {
      enable = true;
      # Disable suggestion and panel modules when using blink-cmp-copilot
      # to avoid conflicts with blink-cmp completion
      settings = {
        suggestion = {
          enabled = false;
        };
        panel = {
          enabled = false;
        };
        filetypes = {
          yaml = true;
          markdown = true;
          help = false;
          gitcommit = true;
          gitrebase = false;
          hgcommit = false;
          svn = false;
          cvs = false;
          "." = false;
        };
      };
    };
  };
}

{
  plugins = {
    # GitHub Copilot integration
    copilot-lua = {
      enable = true;
      # Disable suggestion and panel modules when using copilot-cmp
      # to avoid conflicts with blink-cmp completion
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

    # Copilot integration with completion engine
    copilot-cmp = {
      enable = true;
    };
  };
}

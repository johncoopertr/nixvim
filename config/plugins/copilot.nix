{
  plugins = {
    # GitHub Copilot integration
    copilot-lua = {
      enable = true;
      suggestion = {
        enabled = true;
        autoTrigger = true;
        debounce = 75;
        keymap = {
          accept = "<M-l>";
          acceptWord = false;
          acceptLine = false;
          next = "<M-]>";
          prev = "<M-[>";
          dismiss = "<C-]>";
        };
      };
      panel = {
        enabled = true;
        autoRefresh = false;
        keymap = {
          jumpPrev = "[[";
          jumpNext = "]]";
          accept = "<CR>";
          refresh = "gr";
          open = "<M-CR>";
        };
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

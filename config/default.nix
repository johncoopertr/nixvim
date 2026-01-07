 {
  imports = [ 
    ./global.nix 
    ./colorschemes.nix
    ./plugins
    ./keymaps.nix
  ];
  # diagnostics = {
  #   virtual_lines = {
  #     only_current_line = true;
  #   };
  #   virtual_text = false;
  # };
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  clipboard.register = "unnamedplus"; 
  extraConfigLua = ''
    vim.opt.fileformat = "unix";
    vim.opt.fileformats = "unix";
    local function paste()
      return {
        vim.fn.split(vim.fn.getreg(""), "\n"),
        vim.fn.getregtype(""),
      }
    end

    vim.g.clipboard = {
      name = "OSC 52",
      copy = {
        ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
        ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
      },
      paste = {
        ["+"] = paste,
        ["*"] = paste,
      },
    }
  '';
}

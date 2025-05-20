 {
  imports = [ 
    ./global.nix 
    ./colorschemes.nix
    ./plugins
    ./keymaps.nix
  ];
  #clipboard.register = "unnamedplus";
  diagnostics = {
    virtual_lines = {
      only_current_line = true;
    };
    virtual_text = false;
  };
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  extraConfigLua = ''
    vim.g.clipboard = {
      name = 'OSC 52',
      copy = {
        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
        ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
      },
      paste = {
        ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
        ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
      }
    }
  '';
}

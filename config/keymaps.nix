{
    config,
    lib,
    ...
}: {
    
    globals = {
        mapleader = " ";
        maplocalleader = " ";
    };

    keymaps = let
        insert = 
        lib.mapAttrsToList
        (key: action: {
          mode = "i";
          inherit action key;
        })
        {
          "jj" = "<Esc>";
        };
        normal = 
          lib.mapAttrsToList
          (key: action: {
            mode = "n";
            inherit action key;
          })
          {
            "<Space>" = "<NOP>";

            # Esc to clear search results
            "<esc>" = ":noh<CR>";

            # fix Y behaviour
            Y = "y$";

            # back and fourth between the two most recent files
            "<C-c>" = ":b#<CR>";

            # close by Ctrl+x
            "<C-x>" = ":close<CR>";

            # save by Space+s or Ctrl+s
            "<leader>w" = ":w<CR>";
            "<C-s>" = ":w<CR>";
            
            # navigate to left/right window
            "<leader>h" = "<C-w>h";
            "<leader>l" = "<C-w>l";
            
            # resize with arrows
            "<C-Up>" = ":resize -2<CR>";
            "<C-Down>" = ":resize +2<CR>";
            "<C-Left>" = ":vertical resize +2<CR>";
            "<C-Right>" = ":vertical resize -2<CR>";

            # move current line up/down
            # M = Alt key
            "<M-k>" = ":move-2<CR>";
            "<M-j>" = ":move+<CR>";

          };
        visual = 
          lib.mapAttrsToList
          (key: action: {
            mode = "v";
            inherit action key;
          })
          {
            # better indenting
            ">" = ">gv";
            "<" = "<gv";
            "<TAB>" = ">gv";
            "<S-TAB>" = "<gv";

            # move selected line / block of text in visual mode
            "K" = ":m '<-2<CR>gv=gv";
            "J" = ":m '>+1<CR>gv=gv";
          };
        # Harpoon2 keymaps
        harpoon = [
          {
            mode = "n";
            key = "<leader>a";
            action.__raw = "function() require('harpoon'):list():add() end";
            options.silent = true;
          }
          {
            mode = "n";
            key = "<C-e>";
            action.__raw = "function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end";
            options.silent = true;
          }
          {
            mode = "n";
            key = "<C-j>";
            action.__raw = "function() require('harpoon'):list():select(1) end";
            options.silent = true;
          }
          {
            mode = "n";
            key = "<C-k>";
            action.__raw = "function() require('harpoon'):list():select(2) end";
            options.silent = true;
          }
          {
            mode = "n";
            key = "<C-l>";
            action.__raw = "function() require('harpoon'):list():select(3) end";
            options.silent = true;
          }
          {
            mode = "n";
            key = "<C-m>";
            action.__raw = "function() require('harpoon'):list():select(4) end";
            options.silent = true;
          }
        ];
      in
        lib.nixvim.keymaps.mkKeymaps
        {options.silent = true;}
        (insert ++ normal ++ visual) ++ harpoon;

}

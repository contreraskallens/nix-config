{...}: {
  keymaps = [
    # Buffer management
    {
      action = "<CMD>BufferPrevious<CR>";
      key = "<A-,>";
      mode = [
        "n"
        "x"
        "s"
        "o"
        "t"
        "i"
      ];
      options.desc = "Previous buffer";
    }
    {
      action = "<CMD>BufferNext<CR>";
      key = "<A-.>";
      mode = [
        "n"
        "x"
        "s"
        "o"
        "t"
        "i"
      ];
      options.desc = "Next buffer";
    }
    {
      action = "<CMD>BufferClose!<CR>";
      key = "<A-c>";
      mode = [
        "n"
        "x"
        "s"
        "o"
        "t"
        "i"
      ];
      options.desc = "Close buffer";
    }
    {
      action = "<CMD>BufferNext<CR>";
      key = "<A-d>";
      mode = [
        "n"
        "x"
        "s"
        "o"
        "t"
        "i"
      ];
      options.desc = "Delete buffer";
    }
    # Misc
    {
      action.__raw = "vim.lsp.buf.definition";
      key = "gd";
      mode = ["n"];
      options.desc = "Go to definition";
    }
    {
      action.__raw = ''
        function()
          require("which-key").show({global = false})
        end
      '';
      key = "<leader>?";
      mode = [
        "n"
        "x"
      ];
      options.desc = "Buffer local keymaps";
    }
    # Flash
    {
      action.__raw = ''
        function()
          require("flash").jump()
        end
      '';
      key = "s";
      mode = [
        "n"
        "x"
        "o"
      ];
      options.desc = "Flash";
    }
    {
      action.__raw = ''
        function()
          require("flash").treesitter()
        end
      '';
      key = "S";
      mode = [
        "n"
        "x"
        "o"
      ];
      options.desc = "Flash treesitter";
    }
    {
      action.__raw = ''
        function()
          require("flash").treesitter_search()
        end
      '';
      key = "R";
      mode = [
        "n"
        "x"
        "o"
      ];
      options.desc = "Flash treesitter search";
    }
    # Yazi
    {
      action = "<CMD>Yazi<CR>";
      key = "<leader>ff";
      mode = ["n"];
      options.desc = "Open yazi at current file";
    }
    {
      action = "<CMD>Yazi cwd<CR>";
      key = "<leader>fe";
      mode = ["n"];
      options.desc = "Open yazi in CWD";
    }
    {
      action = "<CMD>Yazi toggle<CR>";
      key = "<leader>ft";
      mode = ["n"];
      options.desc = "Toggle Yazi";
    }
    # Buffers
    {
      action = "<CMD>BufferPick<CR>";
      key = "<leader><space>";
      mode = ["n"];
      options.desc = "Pick buffer";
    }
    {
      action = "<CMD>BufferPick<CR>";
      key = "<leader>bb";
      mode = ["n"];
      options.desc = "Pick buffer";
    }
    {
      action = "<CMD>BufferPickDelete<CR>";
      key = "<leader>bB";
      mode = ["n"];
      options.desc = "Pick buffer to delete";
    }
    {
      action = "<CMD>BufferClose<CR>";
      key = "<leader>bc";
      mode = ["n"];
      options.desc = "Close buffer";
    }
    {
      action = "<CMD>BufferCloseAllButCurrentOrPinned<CR>";
      key = "<leader>bC";
      mode = ["n"];
      options.desc = "Close all buffers but current or pinned";
    }
    {
      action = "<CMD>BufferDelete!<CR>";
      key = "<leader>bd";
      mode = ["n"];
      options.desc = "Delete buffer";
    }
    {
      action = "<CMD>BufferWipeout!<CR>";
      key = "<leader>bD";
      mode = ["n"];
      options.desc = "Wipeout buffer";
    }
    {
      action = "<CMD>BufferPin<CR>";
      key = "<leader>bp";
      mode = ["n"];
      options.desc = "Pin/unpin buffer";
    }
    {
      action = "<CMD>BufferCloseAllButVisible<CR>";
      key = "<leader>bv";
      mode = ["n"];
      options.desc = "Close all buffers but visible";
    }
    {
      action = "<CMD>BufferMovePrevious<CR>";
      key = "<A-<>";
      mode = ["n"];
      options.desc = "Reorder buffer to previous";
    }
    {
      action = "<CMD>BufferMoveNext<CR>";
      key = "<A->>";
      mode = ["n"];
      options.desc = "Reorder buffer to next";
    }
    # Search
    {
      action.__raw = ''
        function()
          require("snacks").picker.registers()
        end
      '';
      key = "<C-c>";
      mode = ["n"];
      options.desc = "Search registers";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.cliphist()
        end
      '';
      key = "<leader>R";
      mode = ["n"];
      options.desc = "Search clipboard history";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.undo()
        end
      '';
      key = "<leader>u";
      mode = ["n"];
      options.desc = "Search undo history";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.lines()
        end
      '';
      key = "<C-l>";
      mode = ["n"];
      options.desc = "Search lines";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.buffers()
        end
      '';
      key = "<leader>sb";
      mode = ["n"];
      options.desc = "Search buffers";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.icons()
        end
      '';
      key = "<leader>se";
      mode = ["n"];
      options.desc = "Search emojis and icons";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.grep()
        end
      '';
      key = "<leader>sg";
      mode = ["n"];
      options.desc = "Search grep";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.smart({cwd = "/"})
        end
      '';
      key = "<leader>sF";
      mode = ["n"];
      options.desc = "Search all files";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.smart()
        end
      '';
      key = "<leader>sf";
      mode = ["n"];
      options.desc = "Search project files";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.recent()
        end
      '';
      key = "<leader>sr";
      mode = ["n"];
      options.desc = "Search recent files";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.commands()
        end
      '';
      key = "<leader>sk";
      mode = ["n"];
      options.desc = "Search commands";
    }

    {
      action.__raw = ''
        function()
          require("snacks").picker.keymaps()
        end
      '';
      key = "<leader>sK";
      mode = ["n"];
      options.desc = "Search keymaps";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.notifications()
        end
      '';
      key = "<leader>sn";
      mode = ["n"];
      options.desc = "Search notifications";
    }
    # Git
    {
      action = "<CMD>LazyGit<CR>";
      key = "<leader>g";
      mode = ["n"];
      options.desc = "Open LazyGit";
    }
    # LSP
    {
      action.__raw = ''
        function()
          require("snacks").picker.diagnostics()
        end
      '';
      key = "<leader>ld";
      mode = ["n"];
      options.desc = "Search diagnostics";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.lsp_workspace_symbol()
        end
      '';
      key = "<leader>ls";
      mode = ["n"];
      options.desc = "Search symbols (workspace)";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.lsp_symbols()
        end
      '';
      key = "<leader>lS";
      mode = ["n"];
      options.desc = "Search symbols (buffer)";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.todo_comments()
        end
      '';
      key = "<leader>lt";
      mode = ["n"];
      options.desc = "Search ToDo comments";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.qflist()
        end
      '';
      key = "<leader>lq";
      mode = ["n"];
      options.desc = "Search quickfix list";
    }
    # {
    #   action.__raw = ''
    #     function()
    #       require("conform").format()
    #     end
    #   '';
    #   key = "<leader>lc";
    #   mode = [ "n" ];
    #   options.desc = "Format file";
    # }
    {
      action.__raw = ''
        function()
          vim.lsp.buf.rename()
        end
      '';
      key = "<leader>lr";
      mode = ["n"];
      options.desc = "LSP rename";
    }
    {
      action.__raw = ''
        function()
          require("snacks").picker.lsp_references()
        end
      '';
      key = "<leader>lR";
      mode = ["n"];
      options.desc = "List references (cursor)";
    }
    {
      action.__raw = ''
        function()
          vim.lsp.buf.implementation()
        end
      '';
      key = "<leader>li";
      mode = ["n"];
      options.desc = "Implementation";
    }
    {
      action.__raw = ''
        function()
          vim.lsp.buf.definition()
        end
      '';
      key = "<leader>lf";
      mode = ["n"];
      options.desc = "Source definition";
    }
    {
      action.__raw = ''
        function()
          vim.lsp.buf.type_definition()
        end
      '';
      key = "<leader>lF";
      mode = ["n"];
      options.desc = "Type definition";
    }
    {
      action.__raw = ''
        function()
          require("tiny-code-action").code_action({})
        end
      '';
      key = "<leader>lA";
      mode = ["n"];
      options.desc = "Show code actions";
    }
    {
      action.__raw = ''
        function()
          require("quicker").toggle()
        end
      '';
      key = "<leader>lf";
      mode = ["n"];
      options.desc = "Toggle quickfix";
    }
    {
      action.__raw = ''
        function()
          require("quicker").toggle({loclist = true})
        end
      '';
      key = "<leader>ll";
      mode = ["n"];
      options.desc = "Toggle loclist";
    }
    # {
    #   action.__raw = ''
    #     function()
    #       require("conform").format()
    #     end
    #   '';
    #   key = "<leader>lc";
    #   mode = ["x"];
    #   options.desc = "Format selection";
    # }

    # Session manager
    {
      action.__raw = ''
        function()
          require("mini.sessions").write(vim.fn.input("Session name: "))
        end
      '';
      key = "<leader>Sn";
      mode = ["x"];
      options.desc = "New session";
    }
    {
      action.__raw = ''
        function()
          require("mini.sessions").select("delete")
        end
      '';
      key = "<leader>Sd";
      mode = ["x"];
      options.desc = "Delete session";
    }
    {
      action.__raw = ''
        function()
          require("mini.sessions").select("read")
        end
      '';
      key = "<leader>Sr";
      mode = ["x"];
      options.desc = "Read session";
    }
    {
      action.__raw = ''
        function()
          require("mini.sessions").write()
        end
      '';
      key = "<leader>Sw";
      mode = ["x"];
      options.desc = "Write current session";
    }

    # Terminal
    {
      action = "<CMD>horizontal term<CR>";
      key = "<leader>th";
      mode = ["n"];
      options.desc = "Terminal (horizontal)";
    }
    {
      action = "<CMD>vertical term<CR>";
      key = "<leader>tv";
      mode = ["n"];
      options.desc = "Terminal (vertical)";
    }
    {
      action = "<CMD>term<CR>";
      key = "<leader>tb";
      mode = ["n"];
      options.desc = "Terminal (buffer)";
    }
    # Zen
    {
      action = "<CMD>ZenMode<CR>";
      key = "<leader>zz";
      mode = ["n"];
      options.desc = "[Z]en Mode";
    }
    {
      action = "<CMD>Twilight<CR>";
      key = "<leader>zd";
      mode = ["n"];
      options.desc = "[D]im Mode";
    }
  ];
}

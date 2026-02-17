{...}: {
  plugins.yazi = {
    enable = true;
    settings = {
      open_for_directories = true;
      keymaps.show_help = "<f1>";
    };
  };
  plugins.lazygit = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings.cmd = ["LazyGit"];
    };
  };
  plugins.zk = {
    enable = true;
    lsp = {
      auto_attach = {
        enabled = true;
        filetypes = [
          "markdown"
        ];
      };
      config = {
        cmd = [
          "zk"
          "lsp"
        ];
        name = "zk";
      };
    };
    picker = "snacks_picker";
    lazyLoad = {
      enable = true;
      settings = {
        ft = "markdown";
        keys = [
          {
            __unkeyed-1 = "<leader>wn";
            __unkeyed-2 = "<CMD>ZkNew { title = vim.fn.input('Title: ') }<CR>";
            mode = ["n"];
            desc = "[W]iki [N]ew";
          }
          {
            __unkeyed-1 = "<leader>wd";
            __unkeyed-2 = "<CMD>ZkNew { dir = 'journal/daily' }<CR>";
            mode = ["n"];
            desc = "[W]iki [D]aily";
          }
          {
            __unkeyed-1 = "<leader>wo";
            __unkeyed-2 = "<CMD>ZkNotes { sort = { 'modified' }, excludeHrefs = {'journal'} }<CR>";
            mode = ["n"];
            desc = "[W]iki [O]pen";
          }
          {
            __unkeyed-1 = "<leader>wj";
            __unkeyed-2 = "<CMD>ZkNew { title = vim.fn.input('Title: ') }<CR>";
            mode = ["n"];
            desc = "[W]iki [J]ournal";
          }
          {
            __unkeyed-1 = "<leader>wt";
            __unkeyed-2 = "<CMD>ZkTags<CR>";
            mode = ["n"];
            desc = "[W]iki [T]ags";
          }
          {
            __unkeyed-1 = "<leader>wq";
            __unkeyed-2 = "<CMD>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') }, excludeHrefs = { 'journal' } }<CR>";
            mode = ["n"];
            desc = "[W]iki [Q]uery";
          }
          {
            __unkeyed-1 = "<leader>wf";
            __unkeyed-2 = "<CMD>ZkNew { dir = vim.fn.input('Directory: '), title = vim.fn.input('Title: ') }<CR>";
            mode = ["n"];
            desc = "[W]iki note in [f]older";
          }
          {
            __unkeyed-1 = "<leader>wi";
            __unkeyed-2 = "<CMD>ZkInsertLink<CR>";
            mode = ["n"];
            desc = "[W]iki [I]nsert link";
          }
          {
            __unkeyed-1 = "<leader>wi";
            __unkeyed-2 = ":'<,'>ZkInsertLinkAtSelection<CR>";
            mode = ["x"];
            desc = "[W]iki [I]nsert link (selection)";
          }
        ];
      };
    };
  };

  plugins.zen-mode = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings.cmd = ["ZenMode"];
    };
  };
  plugins.twilight = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings.cmd = ["Twilight"];
    };
  };

  plugins.mini-basics = {
    enable = true;
    settings = {
      options.basic = false;
      mappings = {
        windows = true;
        move_with_alt = true;
        option_toggle_prefix = ",";
      };
    };
  };
  plugins.mini-icons = {
    enable = true;
    mockDevIcons = true;
    settings.on_attach =
      # Lua
      ''
        function()
          require('mini.icons').tweak_lsp_kind()
        end
      '';
  };
  plugins.mini-misc.enable = true;
  plugins.mini-sessions.enable = true;
  plugins.mini-starter.enable = true;
  plugins.mini-animate.enable = true;
  plugins.mini-bracketed.enable = true;
  plugins.mini-colors.enable = true;
  plugins.mini-comment.enable = true;
  plugins.mini-cursorword.enable = true;
  plugins.mini-diff.enable = true;
  plugins.mini-move.enable = true;
  plugins.mini-pairs.enable = true;
  plugins.mini-splitjoin.enable = true;
  plugins.mini-trailspace.enable = true;
  plugins.snacks = {
    enable = true;
    settings = {
      # input.enabled = true;
      quickfile.enabled = true;
      image.enabled = true;
      indent.enabled = true;
      statuscol.enabled = true;
      picker.enabled = true;
      notifier.enabled = true;
    };
  };
}

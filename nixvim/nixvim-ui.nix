{...}: {
  colorschemes.kanagawa.enable = true;
  plugins.barbar.enable = true;
  plugins.navic = {
    enable = true;
    settings = {
      lsp.auto_attach = true;
    };
  };
  plugins.lualine = {
    enable = true;
    settings = {
      options.theme = "kanagawa";
      sections = {
        lualine_a = ["mode"];
        lualine_b = [
          "branch"
          "diff"
          "diagnostics"
        ];
        lualine_c = [
          "filename"
          "navic"
        ];
        lualine_x = [
          "fileformat"
          "filetype"
        ];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
    };
  };
  plugins.gitsigns.enable = true;
  plugins.which-key = {
    enable = true;
    settings = {
      delay = 0;
      "preset" = "helix";
      spec = [
        {
          __unkeyed-1 = "<leader>b";
          group = "Buffer";
        }
        {
          __unkeyed-1 = "<leader>C";
          group = "Comment";
        }
        {
          __unkeyed-1 = "<leader>f";
          group = "Files";
        }
        {
          __unkeyed-1 = "<leader>l";
          group = "LSP";
        }
        {
          __unkeyed-1 = "<leader>S";
          group = "Session";
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "Search";
        }
        {
          __unkeyed-1 = "<leader>t";
          group = "Terminal";
        }
        {
          __unkeyed-1 = "<leader>w";
          group = "Wiki";
        }
        {
          __unkeyed-1 = "<leader>z";
          group = "Zen";
        }
      ];
    };
  };
  plugins.tiny-inline-diagnostic = {
    enable = true;
    settings = {
      options = {
        show_source = {
          enabled = true;
          if_many = true;
        };
        use_icons_from_diagnostic = true;
        multilines = {
          enabled = true;
          always_show = true;
          trim_whitespace = true;
        };
        show_all_diags_on_cursorline = true;
      };
    };
  };
  plugins.flash = {
    enable = true;
    settings.modes.search.enabled = true;
  };
  plugins.render-markdown = {
    enable = true;
    autoLoad = true;
    lazyLoad = {
      enable = true;
      settings.ft = ["markdown"];
    };
  };

  plugins.origami.enable = true;
}

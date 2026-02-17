{
  pkgs,
  lib,
  ...
}: {
  plugins.lsp = {
    enable = true;
    onAttach = ''
      require("workspace-diagnostics").populate_workspace_diagnostics(client, bufnr)
    '';
    servers = {
      air.enable = true;
      biome.enable = true;
      hyprls.enable = true;
      lua_ls.enable = true;
      nil_ls.enable = true;
      ruff = {
        enable = true;
        extraOptions = {
          init_options = {
            settings = {
              organizeImports = true;
              showSyntaxErrors = true;
              codeAction = {
                disableRuleComment.enable = true;
                fixViolation.enable = true;
              };
              format.preview = false;
              lint.enable = false;
            };
          };
        };
      };
      stylua.enable = true;
      r_language_server = {
        enable = true;
        package = pkgs.rPackages.languageserver;
        config = {
          cmd = ["${pkgs.rWrapper.override {packages = [pkgs.rPackages.languageserver];}}/bin/R" "--no-save" "--no-restore" "-e" "languageserver::run()"];
          filetypes = ["r" "rmd"];
        };
      };
      tinymist.enable = true;
      ty.enable = true;
    };
  };
  plugins.blink-cmp = {
    enable = true;
    setupLspCapabilities = true;
    settings = {
      sources.default = [
        "lsp"
        "path"
      ];
      keymap = {
        "preset" = "super-tab";
        "<C-space>" = ["show"];
      };
      appearance.nerd_font_variant = "mono";
      cmdline = {
        enabled = true;
        keymap."preset" = "cmdline";
      };
      completion = {
        trigger = {
          show_on_trigger_character = true;
          show_on_keyword = true;
          show_on_insert_on_trigger_character = true;
        };
        documentation.auto_show = false;
        list.selection.preselect = true;
        ghost_text.enabled = true;
      };
      fuzzy = {
        prebuilt_binaries.download = true;
      };
    };
  };
  ## Treesitter

  plugins.treesitter = {
    enable = true;
    highlight.enable = true;
    indent.enable = true;
    folds.enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      go
      html
      hyprlang
      jsdoc
      json
      julia
      lua
      luadoc
      markdown
      markdown_inline
      nix
      python
      r
      rnoweb
      regex
      rust
      toml
      typst
      vim
      vimdoc
      xml
      yaml
    ];
  };

  plugins.conform-nvim = {
    enable = true;
    autoInstall = {
      enable = false;
    };
    settings = {
      formatters_by_ft = {
        r = ["air"];
        nix = ["alejandra"];
        lua = ["stylua"];
        python = ["ruff_format"];
        json = ["biome"];
        javascript = ["prettierd"];
        markdown = ["prettier"];
        toml = ["taplo"];
        typst = ["typstyle"];
        xml = ["xmlformatter"];
      };
      format_on_save =
        # Lua
        lib.nixvim.mkRaw ''
          function(bufnr)
            return { timeout_ms = 500, lsp_fallback = true }
           end
        '';
    };
    lazyLoad = {
      enable = true;
      settings = {
        event = ["BufReadPost" "BufNewFile"];
        keys = [
          {
            __unkeyed-1 = "<leader>lc";
            __unkeyed-2.__raw = ''
              function()
                require("conform").format()
              end

            '';
            mode = ["n" "x"];
            desc = "Format file";
          }
        ];
        cmd = ["ConformInfo"];
      };
    };
  };
}

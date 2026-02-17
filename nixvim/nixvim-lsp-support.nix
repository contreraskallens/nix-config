{lib, ...}: {
  plugins.neogen = {
    enable = true;
    settings.languages = {
      lua.template.annotation_convention = "emmylua";
      python.template.annotation_convention = "google_docstrings";
      julia.template.annotation_convention = "julia";
    };
    lazyLoad = {
      enable = true;
      settings = {
        event = ["BufReadPost" "BufNewFile"];
        keys = [
          {
            __unkeyed-1 = "<leader>lD";
            __unkeyed-2.__raw = ''
              function()
                require("neogen").generate()
              end
            '';
            mode = ["n"];
            desc = "Insert Docs";
          }
        ];
      };
    };
  };
  plugins.aerial = {
    enable = true;
    on_attach =
      # Lua
      lib.nixvim.mkRaw ''
              function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr, desc = "Aerial previous" })
            	vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr, desc = "Aerial next" })
            	end
      '';
    lazyLoad = {
      enable = true;
      settings = {
        event = ["LspAttach"];
        keys = [
          {
            __unkeyed-1 = "<leader>la";
            __unkeyed-2 = "<CMD>AerialToggle!<CR>";
            mode = ["n"];
            desc = "Show [A]erial";
          }
        ];
      };
    };
  };
  plugins.quicker = {
    enable = true;
    keys = [
      {
        __unkeyed-1 = ">";
        __unkeyed-2 = {
          __raw =
            # Lua
            lib.nixvim.mkRaw ''
              function()
                require("quicker").expand({ before = 2, after = 2, add_to_existing = true })
              end
            '';
        };
        desc = "Expand quickfix context";
      }
      {
        __unkeyed-1 = "<";
        __unkeyed-2 = {
          __raw = "require('quicker').collapse";
        };
        desc = "Collapse quickfix context";
      }
    ];
    lazyLoad = {
      enable = true;
      settings.event = ["LspAttach"];
    };
  };
  plugins.todo-comments = {
    enable = true;
    settings.signs = true;
    lazyLoad = {
      enable = true;
      settings.event = ["BufReadPost" "BufNewFile"];
    };
  };
  plugins.guess-indent = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings.event = ["BufReadPre" "BufNewFile"];
    };
  };

  plugins.comment-box = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings.keys = [
        {
          __unkeyed-1 = "<leader>Ct";
          __unkeyed-2 = "<CMD>CBccbox7<CR>";
          mode = [
            "n"
            "x"
          ];
          desc = "Comment box title";
        }
        {
          __unkeyed-1 = "<leader>Cp";
          __unkeyed-2 = "<CMD>CBllline13<CR>";
          mode = [
            "n"
            "x"
          ];
          desc = "Comment box part";
        }
        {
          __unkeyed-1 = "<leader>Cl";
          __unkeyed-2 = "<CMD>CBline<CR>";
          mode = [
            "n"
            "x"
          ];
          desc = "Comment box line";
        }
        {
          __unkeyed-1 = "<leader>Cm";
          __unkeyed-2 = "<CMD>CBllbox12<CR>";
          mode = [
            "n"
            "x"
          ];
          desc = "Comment box mark";
        }
        {
          __unkeyed-1 = "<leader>Cd";
          __unkeyed-2 = "<CMD>CBd<CR>";
          mode = [
            "n"
            "x"
          ];
          desc = "Comment box delete";
        }
      ];
    };
  };
}

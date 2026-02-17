{
  pkgs,
  lib,
  rNvim,
  ...
}: {
  extraPlugins = [
    pkgs.vimPlugins.plenary-nvim
    pkgs.vimPlugins.snacks-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "r-nvim";
      src = rNvim;
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "workspace-diagnostics";
      src = pkgs.fetchFromGitHub {
        owner = "artemave";
        repo = "workspace-diagnostics.nvim";
        rev = "60f9175b2501ae3f8b1aba9719c0df8827610c8e";
        hash = "sha256-jSpKaKnGyip/nzqU52ypWLgoCtvccYN+qb5jzlwAnd4=";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "tiny-code-action";
      src = pkgs.fetchFromGitHub {
        owner = "rachartier";
        repo = "tiny-code-action.nvim";
        rev = "2215a7311b6eac9535695167c3a38d10c3eab444";
        hash = "sha256-c3wH7Zwy0oChAuyDToHHJWOOvEALtl9FDDKNcdCCTd8=";
      };
      doCheck = false;
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "tabout";
      src = pkgs.fetchFromGitHub {
        owner = "abecodes";
        repo = "tabout.nvim";
        rev = "9a3499480a8e53dcaa665e2836f287e3b7764009";
        hash = "sha256-5T/nefCPCR2K1vySTG0vzh5+6weHinBLahPBL37+VtY=";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "colorful-winsep";
      src = pkgs.fetchFromGitHub {
        owner = "nvim-zh";
        repo = "colorful-winsep.nvim";
        rev = "cc514e64dd9b33f56d28fbd977ebd8397892e349";
        hash = "sha256-Sd1y7ITgYYT32k5OF0GueB+Uiu+ix+aUgIF+4aNn9Os=";
      };
    })
  ];

  plugins.lz-n.plugins = [
    {
      __unkeyed-1 = "tiny-code_action";
      event = ["LspAttach"];
      after = lib.nixvim.mkRaw ''
        require("tiny-code-action").setup({})
      '';
    }
    {
      __unkeyed-1 = "tabout";
      event = ["InsertCharPre"];
      after = lib.nixvim.mkRaw ''
             require("tabout").setup({
        	tabkey = "<Tab>",
        	backwards_tabkey = "<S-Tab>",
        	act_as_tab = true,
        	act_as_shift_tab = false,
        	default_tab = "<C-t>",
        	default_shift_tab = "<C-d>",
        	enable_backwards = true,
        	completion = false,
        	tabouts = {
        		{ open = "'", close = "'" },
        		{ open = '"', close = '"' },
        		{ open = "`", close = "`" },
        		{ open = "(", close = ")" },
        		{ open = "[", close = "]" },
        		{ open = "{", close = "}" },
        	},
        	ignore_beginning = true,
        	exclude = {},
        })

      '';
    }
    {
      __unkeyed-1 = "colorful-winsep";
      event = ["WinLeave"];
      after = lib.nixvim.mkRaw ''
        require("colorful-winsep").setup()
      '';
    }
  ];
}

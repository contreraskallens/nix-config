{
  pkgs,
  lib,
  ...
}: {
  plugins.lz-n.enable = true;
  globals = {
    mapleader = " ";
    markdown_fenced_languages = [
      "html"
      "r"
      "bash"
      "lua"
      "python"
      "css"
      "json"
      "rust"
    ];
  };
  opts = {
    mouse = "a";
    mousescroll = "ver:25,hor:6";
    switchbuf = "usetab";
    undofile = true;
    backup = false;
    writebackup = false;
    breakindent = true;
    breakindentopt = "list:-1";
    colorcolumn = "+1";
    cursorline = true;
    linebreak = true;
    list = true;
    number = true;
    relativenumber = true;
    pumheight = 10;
    ruler = true;
    shortmess = "CFOSWaco";
    showmode = false;
    signcolumn = "yes";
    splitbelow = true;
    splitkeep = "screen";
    splitright = true;
    winborder = "single";
    wrap = false;
    cursorlineopt = "screenline,number";
    fillchars = "eob: ,fold:╌";
    listchars = "extends:…,nbsp:␣,precedes:…,tab:> ";
    conceallevel = 2;
    concealcursor = "nc";
    autoindent = true;
    expandtab = true;
    formatoptions = "rqnl1j";
    ignorecase = true;
    incsearch = true;
    infercase = true;
    shiftwidth = 2;
    smartcase = true;
    smartindent = true;
    spelloptions = "camel";
    tabstop = 2;
    virtualedit = "block";
    iskeyword = "@,48-57,_,192-255,-";
    formatlistpat = "[[^\s*[0-9\-\+\*]\+[\.\)]*\s\+]";
    complete = ".,w,b,kspell";
    completeopt = "menuone,noselect";
    foldlevel = 99;
    foldlevelstart = 99;
  };
  diagnostic.settings = {
    underline.severity = {
      min = "HINT";
      max = "ERROR";
    };
    virtual_lines = false;
    update_in_insert = false;
    signs.text = {
      ERROR = " ";
      WARN = " ";
      HINT = "󰠠 ";
      INFO = " ";
    };
  };

  # Autocommands
  autoCmd = [
    {
      event = ["LspProgress"];
      callback.__raw = ''
        function(ev)
        		local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
        		vim.notify(vim.lsp.status(), "info", {
        			id = "lsp_progress",
        			title = "LSP Progress",
        			opts = function(notif)
        				notif.icon = ev.data.params.value.kind == "end" and " "
        					or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
        			end,
        		})
        	end
      '';
    }
  ];
}

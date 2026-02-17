{
  config,
  pkgs,
  lib,
  rNvim,
  ...
}: {
  home.username = "omfgzell";
  home.homeDirectory = "/home/omfgzell";

  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24;
  };
  home.packages = with pkgs; [
    # Languages
    R
    rPackages.jsonlite
    go
    julia
    rustup
    python3

    # Formatters
    alejandra
    air-formatter
    biome
    prettierd
    prettier
    ruff
    taplo
    typstyle
    xmlformat

    # Utils
    bat
    btop
    difftastic
    eza
    fzf
    lazygit
    mako
    udiskie
    uv
    wl-clipboard
    yazi

    # Programs
    bitwarden-desktop
    ferdium
    gnome-disk-utility
    libreoffice
    spotify
    taskwarrior3
    thunderbird
    vorta
    winboat
    zathura
    zotero

    # Fonts
    nerd-fonts.fira-code
    nerd-fonts.zed-mono
    nerd-fonts.roboto-mono
    nerd-fonts.noto
  ];
  programs.nixvim = {
    enable = true;
    _module.args = {inherit rNvim;};
    imports = [
      ./nixvim
    ];
  };
  # Import other confs
  imports = [
    ./niri
    ./noctalia
    ./plasma
  ];

  # Git config
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Pablo Contreras";
        email = "batzell@gmail.com";
      };
    };
  };

  # Fish config
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set -gx EDITOR 'nvim'
    '';
  };
  # Kitty config
  programs.kitty = {
    enable = true;
    font = {
      name = "NotoMono Nerd Font Mono";
      package = pkgs.nerd-fonts.noto;
      size = 12.0;
    };
    themeFile = "kanagawa";
    settings = {
      cursor_trail = 200;
      cursor_trail_start_threshold = 2;
      scrollback_lines = 10000;
      scrollback_pager_history_size = 10;
      tab_bar_style = "powerline";
      shell = "fish";
      editor = "nvim";
      notify_on_cmd_finish = "never";
    };
  };

  programs.zen-browser.enable = true;

  # Starship
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };
  xdg.configFile."starship.toml".source = ./dotfiles/starship.toml;

  # Rofi
  programs.rofi = {
    enable = true;
    terminal = "kitty";
    extraConfig = {
      show-icons = true;
      sort = true;
      sorting-method = "fzf";
      matching = "fuzzy";
    };
  };

  # Firefox
  programs.firefox.enable = true;
  home.stateVersion = "25.11";
}

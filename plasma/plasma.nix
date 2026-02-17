{...}: {
  programs.plasma = {
    enable = true;
    kwin = {
      virtualDesktops.number = 4;
    };
    workspace = {
      clickItemTo = "select";
      lookAndFeel = "org.kde.breezedark.desktop";
      cursor.theme = "Bibata-Modern-Ice";
    };
    panels = [
      # Windows-like panel at the bottom
      {
        location = "bottom";
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.icontasks"
          "org.kde.plasma.marginsseparator"
          "org.kde.plasma.pager"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
        ];
      }
    ];
    window-rules = [
      # Terminals maximized
      {
        description = "Terminals maximized";
        match = {
          window-class = {
            value = "kitty";
            type = "regex";
          };
        };
        apply = {
          maximizehoriz = {
            value = true;
            apply = "initially";
          };
          maximizevert = {
            value = true;
            apply = "initially";
          };
        };
      }
      # Browsers maximized
      {
        description = "Browsers maximized";
        match = {
          window-class = {
            value = "firefox|zen-beta";
            type = "regex";
          };
        };
        apply = {
          maximizehoriz = {
            value = true;
            apply = "initially";
          };
          maximizevert = {
            value = true;
            apply = "initially";
          };
        };
      }
    ];

    shortcuts.kwin = {
      "Window Close" = "Meta+Q";
      "Window Quick Tile Left" = "Meta+Left";
      "Window Quick Tile Right" = "Meta+Right";
      "Window Maximize" = "Meta+Up";
      "Window Fullscreen" = "Meta+F";

      "Switch to Desktop 1" = "Meta+1";
      "Switch to Desktop 2" = "Meta+2";
      "Switch to Desktop 3" = "Meta+3";
      "Switch to Desktop 4" = "Meta+4";
      "Window to Desktop 1" = "Meta+Shift+1";
      "Window to Desktop 2" = "Meta+Shift+2";
      "Window to Desktop 3" = "Meta+Shift+3";
      "Window to Desktop 4" = "Meta+Shift+4";
      "Expose" = "Meta+O";
      "Switch Window Down" = "Meta+J";
      "Switch Window Left" = "Meta+H";
      "Switch Window Right" = "Meta+L";
      "Switch Window Up" = "Meta+K";
    };

    hotkeys.commands = {
      "launch-kitty" = {
        key = "Meta+Return";
        command = "kitty";
      };
      "launch-browser" = {
        key = "Meta+Z";
        command = "zen-beta";
      };
      "launch-file" = {
        key = "Meta+E";
        command = "dolphin";
      };
      "launch-launcher" = {
        key = "Meta+Space";
        command = "rofi -show combi -modes combi -combi-modes window,drun";
      };
    };
  };
}

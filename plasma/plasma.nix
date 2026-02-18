{...}: {
  programs.plasma = {
    enable = true;
    workspace = {
      clickItemTo = "select";
      lookAndFeel = "org.kde.breezedark.desktop";
      cursor.theme = "Bibata-Modern-Ice";
    };
    panels = [
      {
        location = "bottom";
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.icontasks"
          "org.kde.plasma.marginsseparator"
          {
            name = "org.kde.plasma.pager";
            config = {
              General = {
                showApplicationIcons = true;
                currentDesktopSelected = 1;
                displayedText = 2;
              };
            };
          }
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
        ];
      }
    ];
    kwin = {
      virtualDesktops = {
        number = 5;
        names = [
          "Browser"
          "Dev"
          "Comms"
          "General"
          "Media"
        ];
      };
    };
    window-rules = [
      {
        description = "Browsers in space 1";
        match = {
          window-class = {
            value = "zen-beta";
            type = "substring";
          };
        };
        apply = {
          desktop = {
            value = "Browser";
            apply = "initially";
          };
        };
      }
      {
        description = "Browsers in space 1";
        match = {
          window-class = {
            value = "firefox";
            type = "substring";
          };
        };
        apply = {
          desktop = {
            value = "Browser";
            apply = "initially";
          };
        };
      }
      {
        description = "Terminal in space 2";
        match = {
          window-class = {
            value = "kitty";
            type = "substring";
          };
        };
        apply = {
          desktop = {
            value = "Dev";
            apply = "initially";
          };
        };
      }
      {
        description = "Thunderbird in space 3";
        match = {
          window-class = {
            value = "thunderbird";
            type = "substring";
          };
        };
        apply = {
          desktop = {
            value = "Comms";
            apply = "initially";
          };
        };
      }
      {
        description = "Ferdium in space 3";
        match = {
          window-class = {
            value = "ferdium";
            type = "substring";
          };
        };
        apply = {
          desktop = {
            value = "Comms";
            apply = "initially";
          };
        };
      }
      {
        description = "Open Spotify on Desktop 5";
        match = {
          window-class = {
            value = "spotify";
            type = "substring";
          };
        };
        apply = {
          desktop = {
            value = "Media";
            apply = "initially";
          };
        };
      }
      {
        description = "Default to 4";
        match = {
          window-class = {
            value = ".*";
            type = "regex";
          };
        };
        apply = {
          desktop = {
            value = "General";
            apply = "initially";
          };
        };
      }
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
    shortcuts = {
      kwin = {
        "Window Close" = "Meta+Q";
        "Window Quick Tile Left" = "Meta+Left";
        "Window Quick Tile Right" = "Meta+Right";
        "Window Maximize" = "Meta+Up";
        "Window Fullscreen" = "Meta+F";

        "Switch to Desktop 1" = "Meta+1";
        "Switch to Desktop 2" = "Meta+2";
        "Switch to Desktop 3" = "Meta+3";
        "Switch to Desktop 4" = "Meta+4";
        "Switch to Desktop 5" = "Meta+5";
        "Window to Desktop 1" = "Meta+Shift+1";
        "Window to Desktop 2" = "Meta+Shift+2";
        "Window to Desktop 3" = "Meta+Shift+3";
        "Window to Desktop 4" = "Meta+Shift+4";
        "Window to Desktop 5" = "Meta+Shift+5";
        "ExposeAll" = "Meta+O";
        "Switch Window Down" = "Meta+J";
        "Switch Window Left" = "Meta+H";
        "Switch Window Right" = "Meta+L";
        "Switch Window Up" = "Meta+K";
      };
      plasmashell = {
        "activate task manager entry 1" = "none";
        "activate task manager entry 2" = "none";
        "activate task manager entry 3" = "none";
        "activate task manager entry 4" = "none";
        "activate task manager entry 5" = "none";
      };
    };
    defaultApplications = {
      "browser" = "zen.beta";
      "terminal" = "kitty";
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

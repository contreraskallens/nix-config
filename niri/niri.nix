{...}: {
  programs.niri.settings = {
    input = {
      keyboard.xkb = {
        layout = "us";
        variant = "altgr-intl";
      };
      touchpad = {
        tap = true;
        scroll-method = "two-finger";
        click-method = "clickfinger";
        dwt = true;
      };

      mouse = {
      };
      trackpoint = {
      };
    };
    gestures.hot-corners.enable = false;
    layout = {
      gaps = 5;
      background-color = "transparent";
      center-focused-column = "never";
      preset-column-widths = [
        {proportion = 0.5;}
        {proportion = 0.6666;}
        {proportion = 1.0;}
      ];
      default-column-width = {proportion = 0.5;};
      border = {
        enable = true;
        width = 2;
        active.color = "#707070";
        inactive.color = "#d0d0d0";
        urgent.color = "#cc4444";
      };
      focus-ring = {
        enable = true;
        width = 2;
        active.color = "#808080";
        inactive.color = "#505050";
      };
      shadow = {
        softness = 30;
        spread = 5;
        offset = {
          x = 0;
          y = 5;
        };
        color = "#0007";
      };
      struts = {
      };
    };
    layer-rules = [
      {
        matches = [{namespace = "^quickshell$";}];
        place-within-backdrop = true;
      }
    ];
    overview.workspace-shadow.enable = true;
    spawn-at-startup = [
      {command = ["noctalia-shell"];}
      {command = ["wl-paste" "--type" "text" "--watch" "cliphist" "store"];}
      {command = ["wl-paste" "--type" "image" "--watch" "cliphist" "store"];}
      {command = ["udiskie"];}
    ];
    environment = {
      XDG_CURRENT_DESKTOP = "niri";
      QT_QPA_PLATFORM = "wayland";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
      QT_QPA_PLATFORMTHEME = "gtk3";
      TERMINAL = "kitty";
    };
    screenshot-path = "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";

    workspaces = {
      "browser" = {};
      "dev" = {};
      "comms".open-on-output = "eDP-1";
    };

    window-rules = [
      {
        matches = [{app-id = "^gnome-control-center$";} {app-id = "^nm-connection-editor$";}];
        default-column-width.proportion = 0.5;
        open-floating = true;
      }
      {
        matches = [{app-id = "^gnome-calculator$";} {app-id = "^galculator$";} {app-id = "pavucontrol";} {app-id = "^blueman-manager$";} {app-id = "^xdg-desktop-portal$";} {app-id = "Bitwarden";} {app-id = "thunar";}];
        open-floating = true;
      }
      {
        matches = [{app-id = "Bitwarden";} {app-id = "thunar";}];
        default-column-width.proportion = 0.75;
        default-window-height.proportion = 0.75;
      }
      {
        matches = [{app-id = "kitty";} {app-id = "zen_browser";} {app-id = "firefox";}];
        open-maximized = true;
        # default-column-width.proportion = 1.0;
      }
      {
        matches = [{app-id = "zen_browser";}];
        open-on-workspace = "browser";
      }
      {
        matches = [{app-id = "kitty";}];
        open-on-workspace = "dev";
      }

      {
        matches = [{app-id = "eu.betterbird.Betterbird";} {app-id = "Ferdium";}];
        open-on-workspace = "comms";
      }
      {
        matches = [{app-id = "Microsoft Word";}];
        open-floating = true;
        default-column-width.proportion = 0.95;
        default-window-height.proportion = 0.95;
      }
    ];

    binds = {
      # System & Overview
      "Mod+O".action.spawn = ["niri" "msg" "action" "toggle-overview"];
      "Mod+Tab" = {
        action.toggle-overview = {};
        repeat = false;
      };
      "Mod+Shift+Slash".action.show-hotkey-overlay = {};

      # Application Launchers ===
      "Mod+Return" = {
        hotkey-overlay.title = "Open Terminal";
        action.spawn = "kitty";
      };
      "Mod+Space" = {
        hotkey-overlay.title = "Application Launcher";
        action.spawn = ["rofi" "-show" "combi" "-modes" "combi" "-combi-modes" "window,drun"];
      };

      "Mod+Q" = {
        action.close-window = {};
        repeat = false;
      };
      "Mod+F".action.maximize-column = {};
      "Mod+Shift+F".action.fullscreen-window = {};
      "Mod+T".action.toggle-window-floating = {};
      "Mod+Shift+V".action.switch-focus-between-floating-and-tiling = {};
      "Mod+W".action.toggle-column-tabbed-display = {};
      "Mod+E".action.spawn = "nemo";
      "Mod+B".action.spawn = "firefox";

      "Mod+Left".action.focus-column-left = {};
      "Mod+Down".action.focus-window-down = {};
      "Mod+Up".action.focus-window-up = {};
      "Mod+Right".action.focus-column-right = {};
      "Mod+H".action.focus-column-left = {};
      "Mod+J".action.focus-window-down = {};
      "Mod+K".action.focus-window-up = {};
      "Mod+L".action.focus-column-right = {};

      "Mod+Shift+Left".action.move-column-left = {};
      "Mod+Shift+Down".action.move-window-down = {};
      "Mod+Shift+Up".action.move-window-up = {};
      "Mod+Shift+Right".action.move-column-right = {};
      "Mod+Shift+H".action.move-column-left = {};
      "Mod+Shift+J".action.move-window-down = {};
      "Mod+Shift+K".action.move-window-up = {};
      "Mod+Shift+L".action.move-column-right = {};

      "Mod+Home".action.focus-column-first = {};
      "Mod+End".action.focus-column-last = {};
      "Mod+Ctrl+Home".action.move-column-to-first = {};
      "Mod+Ctrl+End".action.move-column-to-last = {};

      "Mod+Ctrl+Left".action.focus-monitor-left = {};
      "Mod+Ctrl+Down".action.focus-monitor-down = {};
      "Mod+Ctrl+Up".action.focus-monitor-up = {};
      "Mod+Ctrl+Right".action.focus-monitor-right = {};
      "Mod+Ctrl+H".action.focus-monitor-left = {};
      "Mod+Ctrl+J".action.focus-monitor-down = {};
      "Mod+Ctrl+K".action.focus-monitor-up = {};
      "Mod+Ctrl+L".action.focus-monitor-right = {};

      "Mod+Shift+Ctrl+H".action.move-column-to-monitor-left = {};
      "Mod+Shift+Ctrl+J".action.move-column-to-monitor-down = {};
      "Mod+Shift+Ctrl+K".action.move-column-to-monitor-up = {};
      "Mod+Shift+Ctrl+L".action.move-column-to-monitor-right = {};

      "Mod+Page_Down".action.focus-workspace-down = {};
      "Mod+Page_Up".action.focus-workspace-up = {};
      "Mod+U".action.focus-workspace-down = {};
      "Mod+I".action.focus-workspace-up = {};
      "Mod+Ctrl+Shift+Down".action.move-column-to-workspace-down = {};
      "Mod+Ctrl+Shift+Up".action.move-column-to-workspace-up = {};
      "Mod+Ctrl+Shift+U".action.move-column-to-workspace-down = {};
      "Mod+Ctrl+Shift+I".action.move-column-to-workspace-up = {};

      "Mod+Shift+Page_Down".action.move-workspace-down = {};
      "Mod+Shift+Page_Up".action.move-workspace-up = {};
      "Mod+Shift+U".action.move-workspace-down = {};
      "Mod+Shift+I".action.move-workspace-up = {};

      "Mod+WheelScrollDown" = {
        action.focus-workspace-down = {};
        cooldown-ms = 150;
      };
      "Mod+WheelScrollUp" = {
        action.focus-workspace-up = {};
        cooldown-ms = 150;
      };
      "Mod+Ctrl+WheelScrollDown" = {
        action.move-column-to-workspace-down = {};
        cooldown-ms = 150;
      };
      "Mod+Ctrl+WheelScrollUp" = {
        action.move-column-to-workspace-up = {};
        cooldown-ms = 150;
      };
      "Mod+WheelScrollRight".action.focus-column-right = {};
      "Mod+WheelScrollLeft".action.focus-column-left = {};
      "Mod+Ctrl+WheelScrollRight".action.move-column-right = {};
      "Mod+Ctrl+WheelScrollLeft".action.move-column-left = {};

      "Mod+Shift+WheelScrollDown".action.focus-column-right = {};
      "Mod+Shift+WheelScrollUp".action.focus-column-left = {};
      "Mod+Ctrl+Shift+WheelScrollDown".action.move-column-right = {};
      "Mod+Ctrl+Shift+WheelScrollUp".action.move-column-left = {};

      "Mod+1".action.focus-workspace = 1;
      "Mod+2".action.focus-workspace = 2;
      "Mod+3".action.focus-workspace = 3;
      "Mod+4".action.focus-workspace = 4;
      "Mod+5".action.focus-workspace = 5;
      "Mod+6".action.focus-workspace = 6;
      "Mod+7".action.focus-workspace = 7;
      "Mod+8".action.focus-workspace = 8;
      "Mod+9".action.focus-workspace = 9;

      "Mod+Shift+1".action.move-column-to-workspace = 1;
      "Mod+Shift+2".action.move-column-to-workspace = 2;
      "Mod+Shift+3".action.move-column-to-workspace = 3;
      "Mod+Shift+4".action.move-column-to-workspace = 4;
      "Mod+Shift+5".action.move-column-to-workspace = 5;
      "Mod+Shift+6".action.move-column-to-workspace = 6;
      "Mod+Shift+7".action.move-column-to-workspace = 7;
      "Mod+Shift+8".action.move-column-to-workspace = 8;
      "Mod+Shift+9".action.move-column-to-workspace = 9;

      "Mod+BracketLeft".action.consume-or-expel-window-left = {};
      "Mod+BracketRight".action.consume-or-expel-window-right = {};
      "Mod+Period".action.expel-window-from-column = {};

      "Mod+R".action.switch-preset-column-width = {};
      "Mod+Shift+R".action.switch-preset-window-height = {};
      "Mod+Ctrl+R".action.reset-window-height = {};
      "Mod+Ctrl+F".action.expand-column-to-available-width = {};
      "Mod+C".action.center-column = {};
      "Mod+Ctrl+C".action.center-visible-columns = {};

      "Mod+Minus".action.set-column-width = "-10%";
      "Mod+Equal".action.set-column-width = "+10%";
      "Mod+Shift+Minus".action.set-window-height = "-10%";
      "Mod+Shift+Equal".action.set-window-height = "+10%";

      "XF86Launch1".action.screenshot = {};
      "Ctrl+XF86Launch1".action.screenshot-screen = {};
      "Alt+XF86Launch1".action.screenshot-window = {};
      "Print".action.screenshot = {};
      "Ctrl+Print".action.screenshot-screen = {};
      "Alt+Print".action.screenshot-window = {};

      "Mod+Shift+P".action.power-off-monitors = {};

      # Noctalia
      "XF86AudioRaiseVolume".action.spawn = ["qs" "-c" "noctalia-shell" "ipc" "call" "volume" "increase"];
      "XF86AudioLowerVolume".action.spawn = ["qs" "-c" "noctalia-shell" "ipc" "call" "volume" "decrease"];
      "XF86AudioMute".action.spawn = ["qs" "-c" "noctalia-shell" "ipc" "call" "volume" "muteOutput"];

      "XF86MonBrightnessUp" = {
        action.spawn = ["brightnessctl" "--class=backlight" "set" "5%+"];
        allow-when-locked = true;
      };
      "XF86MonBrightnessDown" = {
        action.spawn = ["brightnessctl" "--class=backlight" "set" "5%-"];
        allow-when-locked = true;
      };
      "Mod+V".action.spawn = ["qs" "-c" "noctalia-shell" "ipc" "call" "launcher" "clipboard"];
    };

    animations = {
      enable = true;
      workspace-switch = {
        enable = true;
        kind.spring = {
          damping-ratio = 0.80;
          stiffness = 523;
          epsilon = 0.0001;
        };
      };
      window-open = {
        enable = true;
        kind.easing = {
          duration-ms = 150;
          curve = "ease-out-expo";
        };
      };
      window-close = {
        enable = true;
        kind.easing = {
          duration-ms = 150;
          curve = "ease-out-quad";
        };
      };
      horizontal-view-movement = {
        enable = true;
        kind.spring = {
          damping-ratio = 0.85;
          stiffness = 423;
          epsilon = 0.0001;
        };
      };
      window-movement = {
        enable = true;
        kind.spring = {
          damping-ratio = 0.75;
          stiffness = 323;
          epsilon = 0.0001;
        };
      };
      window-resize = {
        enable = true;
        kind.spring = {
          damping-ratio = 0.85;
          stiffness = 423;
          epsilon = 0.0001;
        };
      };
      config-notification-open-close = {
        enable = true;
        kind.spring = {
          damping-ratio = 0.65;
          stiffness = 923;
          epsilon = 0.001;
        };
      };
      screenshot-ui-open = {
        enable = true;
        kind.easing = {
          duration-ms = 200;
          curve = "ease-out-quad";
        };
      };
      overview-open-close = {
        enable = true;
        kind.spring = {
          damping-ratio = 0.85;
          stiffness = 800;
          epsilon = 0.0001;
        };
      };
    };
  };
}

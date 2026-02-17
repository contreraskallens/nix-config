{...}: {
  programs.noctalia-shell = {
    enable = true;
    settings = {
      appLauncher = {
        autoPasteClipboard = false;
        clipboardWatchImageCommand = "wl-paste --type image --watch cliphist store";
        clipboardWatchTextCommand = "wl-paste --type text --watch cliphist store";
        clipboardWrapText = true;
        customLaunchPrefix = "";
        customLaunchPrefixEnabled = false;
        enableClipPreview = true;
        enableClipboardHistory = false;
        enableSettingsSearch = true;
        enableWindowsSearch = true;
        iconMode = "tabler";
        ignoreMouseInput = false;
        pinnedApps = [];
        position = "center";
        screenshotAnnotationTool = "";
        showCategories = true;
        showIconBackground = false;
        sortByMostUsed = true;
        terminalCommand = "kitty";
        useApp2Unit = false;
        viewMode = "list";
      };
      audio = {
        cavaFrameRate = 30;
        mprisBlacklist = [];
        preferredPlayer = "spotify";
        visualizerType = "wave";
        volumeFeedback = false;
        volumeOverdrive = false;
        volumeStep = 5;
      };
      bar = {
        autoHideDelay = 500;
        autoShowDelay = 150;
        backgroundOpacity = 0.93;
        barType = "simple";
        capsuleOpacity = 1;
        density = "default";
        displayMode = "always_visible";
        floating = false;
        frameRadius = 12;
        frameThickness = 8;
        hideOnOverview = true;
        marginHorizontal = 15;
        marginVertical = 0;
        monitors = [
        ];
        outerCorners = false;
        position = "top";
        screenOverrides = [
        ];
        showCapsule = true;
        showOutline = false;
        useSeparateOpacity = false;
        widgets = {
          center = [
            {
              colorizeIcons = false;
              hideMode = "hidden";
              "id" = "ActiveWindow";
              maxWidth = 200;
              scrollingMode = "hover";
              showIcon = true;
              useFixedWidth = false;
            }
          ];
          left = [
            {
              characterCount = 2;
              colorizeIcons = false;
              emptyColor = "secondary";
              enableScrollWheel = true;
              focusedColor = "primary";
              followFocusedScreen = false;
              groupedBorderOpacity = 1;
              hideUnoccupied = true;
              iconScale = 0.8;
              id = "Workspace";
              labelMode = "index+name";
              occupiedColor = "secondary";
              pillSize = 0.6;
              reverseScroll = false;
              showApplications = true;
              showBadge = true;
              showLabelsOnlyWhenOccupied = true;
              unfocusedIconsOpacity = 1;
            }
          ];
          right = [
            {
              compactMode = false;
              compactShowAlbumArt = true;
              compactShowVisualizer = false;
              hideMode = "hidden";
              hideWhenIdle = false;
              id = "MediaMini";
              maxWidth = 200;
              panelShowAlbumArt = true;
              panelShowVisualizer = true;
              scrollingMode = "hover";
              showAlbumArt = true;
              "showArtistFirst" = true;
              showProgressRing = false;
              showVisualizer = true;
              useFixedWidth = false;
              visualizerType = "linear";
            }
            {
              blacklist = [
              ];
              colorizeIcons = true;
              drawerEnabled = true;
              hidePassive = true;
              id = "Tray";
              pinned = [];
            }
            {
              id = "Spacer";
              width = 10;
            }
            {
              deviceNativePath = "";
              displayMode = "onhover";
              hideIfIdle = false;
              hideIfNotDetected = true;
              id = "Battery";
              showNoctaliaPerformance = true;
              showPowerProfiles = false;
            }
            {
              displayMode = "onhover";
              id = "Bluetooth";
            }
            {
              displayMode = "onhover";
              id = "Volume";
              middleClickCommand = "pwvucontrol || pavucontrol";
            }
            {
              displayMode = "onhover";
              id = "Brightness";
            }
            {
              clockColor = "primary";
              customFont = "Noto Sans";
              formatHorizontal = "HH:mm | dd/MM";
              formatVertical = "HH mm - dd MM";
              id = "Clock";
              tooltipFormat = "HH:mm ddd, MMM dd";
              useCustomFont = true;
            }
            {
              colorizeDistroLogo = false;
              "colorizeSystemIcon" = "primary";
              customIconPath = "";
              enableColorization = false;
              icon = "noctalia";
              id = "ControlCenter";
              useDistroLogo = true;
            }
            {
              hideWhenZero = true;
              hideWhenZeroUnread = false;
              id = "NotificationHistory";
              showUnreadBadge = true;
              unreadBadgeColor = "primary";
            }
          ];
        };
      };
      brightness = {
        brightnessStep = 5;
        enableDdcSupport = true;
        enforceMinimum = true;
      };
      calendar = {
        cards = [
          {
            enabled = true;
            id = "calendar-header-card";
          }
          {
            enabled = true;
            id = "calendar-month-card";
          }
          {
            enabled = true;
            id = "weather-card";
          }
        ];
      };
      colorSchemes = {
        darkMode = true;
        generationMethod = "tonal-spot";
        manualSunrise = "06:30";
        manualSunset = "18:30";
        monitorForColors = "";
        predefinedScheme = "Kanagawa";
        schedulingMode = "off";
        useWallpaperColors = false;
      };
      controlCenter = {
        cards = [
          {
            enabled = true;
            id = "profile-card";
          }
          {
            enabled = true;
            id = "shortcuts-card";
          }
          {
            enabled = true;
            id = "audio-card";
          }
          {
            enabled = true;
            id = "weather-card";
          }
          {
            enabled = true;
            id = "media-sysmon-card";
          }
          {
            enabled = true;
            id = "brightness-card";
          }
        ];
        diskPath = "/";
        position = "close_to_bar_button";
        shortcuts = {
          left = [
            {
              id = "WiFi";
            }
            {
              id = "Bluetooth";
            }
            {
              id = "WallpaperSelector";
            }
            {
              id = "KeepAwake";
            }
          ];
          right = [
            {
              id = "Notifications";
            }
            {
              id = "PowerProfile";
            }
            {
              id = "NightLight";
            }
          ];
        };
      };
      desktopWidgets = {
        enabled = true;
        gridSnap = false;
        monitorWidgets = [
          {
            name = "eDP-1";
            widgets = [];
          }
        ];
      };
      dock = {
        animationSpeed = 1;
        backgroundOpacity = 1;
        colorizeIcons = false;
        deadOpacity = 0.6;
        displayMode = "always_visible";
        enabled = false;
        floatingRatio = 1;
        inactiveIndicators = false;
        monitors = [];
        onlySameOutput = true;
        pinnedApps = [];
        pinnedStatic = false;
        position = "bottom";
        size = 1;
      };
      general = {
        allowPanelsOnScreenWithoutBar = true;
        allowPasswordWithFprintd = false;
        animationDisabled = false;
        animationSpeed = 1;
        autoStartAuth = false;
        avatarImage = "/home/omfgzell/Pictures/rafal.jpg";
        boxRadiusRatio = 1;
        compactLockScreen = false;
        dimmerOpacity = 0.2;
        enableLockScreenCountdown = true;
        enableShadows = true;
        forceBlackScreenCorners = false;
        iRadiusRatio = 1;
        language = "";
        lockOnSuspend = true;
        lockScreenCountdownDuration = 10000;
        radiusRatio = 1;
        scaleRatio = 1;
        screenRadiusRatio = 1;
        shadowDirection = "bottom_right";
        shadowOffsetX = 2;
        shadowOffsetY = 3;
        showChangelogOnStartup = true;
        showHibernateOnLockScreen = false;
        showScreenCorners = false;
        showSessionButtonsOnLockScreen = true;
        telemetryEnabled = false;
      };
      hooks = {
        darkModeChange = "";
        enabled = false;
        performanceModeDisabled = "";
        performanceModeEnabled = "";
        screenLock = "";
        screenUnlock = "";
        session = "";
        startup = "";
        wallpaperChange = "";
      };
      location = {
        analogClockInCalendar = false;
        firstDayOfWeek = 1;
        hideWeatherCityName = false;
        hideWeatherTimezone = false;
        name = "Santiago, Chile";
        showCalendarEvents = true;
        showCalendarWeather = true;
        showWeekNumberInCalendar = false;
        use12hourFormat = true;
        useFahrenheit = false;
        weatherEnabled = true;
        weatherShowEffects = true;
      };
      network = {
        bluetoothDetailsViewMode = "grid";
        bluetoothHideUnnamedDevices = false;
        bluetoothRssiPollIntervalMs = 10000;
        bluetoothRssiPollingEnabled = true;
        wifiDetailsViewMode = "grid";
        wifiEnabled = true;
      };
      nightLight = {
        autoSchedule = true;
        dayTemp = "6500";
        enabled = false;
        forced = false;
        manualSunrise = "06:30";
        manualSunset = "18:30";
        nightTemp = "4000";
      };
      notifications = {
        backgroundOpacity = 1;
        batteryCriticalThreshold = 5;
        batteryWarningThreshold = 20;
        criticalUrgencyDuration = 5;
        enableKeyboardLayoutToast = true;
        enableMediaToast = false;
        enabled = true;
        location = "top_right";
        lowUrgencyDuration = 3;
        monitors = [];
        normalUrgencyDuration = 5;
        overlayLayer = true;
        respectExpireTimeout = false;
        saveToHistory = {
          critical = true;
          low = true;
          normal = true;
        };
        sounds = {
          criticalSoundFile = "";
          enabled = false;
          excludedApps = "discord,firefox,chrome,chromium,edge";
          lowSoundFile = "";
          normalSoundFile = "";
          separateSounds = false;
          volume = 0.5;
        };
      };
      osd = {
        autoHideMs = 1000;
        backgroundOpacity = 1;
        enabled = true;
        enabledTypes = [
          0
          1
          2
          4
          3
        ];
        location = "top_right";
        monitors = [];
        overlayLayer = true;
      };
      sessionMenu = {
        countdownDuration = 10000;
        enableCountdown = true;
        largeButtonsLayout = "grid";
        largeButtonsStyle = false;
        position = "center";
        powerOptions = [
          {
            action = "lock";
            command = "";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "suspend";
            command = "";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "hibernate";
            command = "";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "reboot";
            command = "";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "logout";
            command = "";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "shutdown";
            command = "";
            countdownEnabled = true;
            enabled = true;
          }
        ];
        showHeader = true;
        showNumberLabels = true;
      };
      settingsVersion = 47;
      systemMonitor = {
        cpuCriticalThreshold = 90;
        cpuPollingInterval = 1000;
        cpuWarningThreshold = 0;
        criticalColor = "";
        diskAvailCriticalThreshold = 10;
        diskAvailWarningThreshold = 20;
        diskCriticalThreshold = 90;
        diskPollingInterval = 9250;
        diskWarningThreshold = 80;
        enableDgpuMonitoring = false;
        externalMonitor = "resources || missioncenter || jdsystemmonitor || corestats || system-monitoring-center || gnome-system-monitor || plasma-systemmonitor || mate-system-monitor || ukui-system-monitor || deepin-system-monitor || pantheon-system-monitor";
        gpuCriticalThreshold = 90;
        gpuPollingInterval = 3000;
        gpuWarningThreshold = 80;
        loadAvgPollingInterval = 3000;
        memCriticalThreshold = 80;
        memPollingInterval = 1000;
        memWarningThreshold = 80;
        networkPollingInterval = 1000;
        swapCriticalThreshold = 90;
        swapWarningThreshold = 80;
        tempCriticalThreshold = 90;
        tempWarningThreshold = 0;
        useCustomColors = false;
        warningColor = "";
      };
      templates = {
        activeTemplates = [
          {
            enabled = true;
            id = "gtk";
          }
          {
            enabled = true;
            id = "qt";
          }
          {
            enabled = true;
            id = "kcolorscheme";
          }
          {
            enabled = true;
            id = "fuzzel";
          }
          {
            enabled = true;
            id = "yazi";
          }
          {
            enabled = true;
            id = "niri";
          }
          {
            enabled = true;
            id = "hyprland";
          }
          {
            enabled = true;
            id = "zenBrowser";
          }
          {
            enabled = true;
            id = "hyprtoolkit";
          }
          {
            enabled = true;
            id = "zathura";
          }
        ];
        enableUserTheming = false;
      };
      ui = {
        bluetoothDetailsViewMode = "grid";
        bluetoothHideUnnamedDevices = false;
        boxBorderEnabled = false;
        fontDefault = "Noto Sans";
        fontDefaultScale = 1.2;
        fontFixed = "ZedMono Nerd Font Mono";
        fontFixedScale = 1.2;
        networkPanelView = "wifi";
        panelBackgroundOpacity = 1;
        panelsAttachedToBar = true;
        settingsPanelMode = "attached";
        tooltipsEnabled = true;
        wifiDetailsViewMode = "grid";
      };
      wallpaper = {
        automationEnabled = false;
        directory = "/home/omfgzell/Pictures/Wallpapers";
        enableMultiMonitorDirectories = false;
        enabled = true;
        fillColor = "#000000";
        fillMode = "crop";
        hideWallpaperFilenames = false;
        monitorDirectories = [];
        overviewEnabled = false;
        panelPosition = "follow_bar";
        randomIntervalSec = 300;
        setWallpaperOnAllMonitors = true;
        showHiddenFiles = false;
        solidColor = "#1a1a2e";
        sortOrder = "name";
        transitionDuration = 1500;
        transitionEdgeSmoothness = 0.05;
        transitionType = "random";
        useSolidColor = false;
        useWallhaven = true;
        viewMode = "single";
        wallhavenApiKey = "";
        wallhavenCategories = "111";
        wallhavenOrder = "desc";
        wallhavenPurity = "100";
        wallhavenQuery = "observatory";
        wallhavenRatios = "";
        wallhavenResolutionHeight = "";
        wallhavenResolutionMode = "atleast";
        wallhavenResolutionWidth = "";
        wallhavenSorting = "relevance";
        wallpaperChangeMode = "random";
      };
    };
  };
}

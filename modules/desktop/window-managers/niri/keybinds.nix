{
  flake.modules.nixos.window-manager_niri = {
    hm.programs.niri.settings.binds = {
      # Essentials
      "Alt+Shift+Return".action.spawn-sh = "alacritty";
      "Alt+Shift+E".action.spawn = "nautilus";
      "Alt+Shift+C".action.close-window = {};
      "Alt+P".action.spawn-sh = "noctalia msg panel-toggle session";
      "Alt+Shift+P".action.spawn-sh = "noctalia msg panel-toggle launcher";
      "Alt+Shift+Q".action.spawn-sh = "pkill noctalia && sleep 1 && noctalia -d";
      "Alt+V".action.spawn-sh = "noctalia msg panel-toggle clipboard";
      "Alt+W".action.spawn-sh = "noctalia msg panel-toggle noctalia/wallhaven:browser";

      "Alt+O" = {
        action.toggle-overview = {};
        repeat = false;
      };

      "Alt+Tab".action.spawn-sh = "noctalia msg window-switcher";
      "Print".action.spawn-sh = "niri msg action screenshot";
      "Alt+Print".action.screenshot-window = {};
      "Ctrl+Print".action.spawn-sh = "noctalia msg screenshot-fullscreen";

      # Navigation (h j k l)
      "Alt+H".action.focus-column-left = {};
      "Alt+J".action.focus-window-down = {};
      "Alt+K".action.focus-window-up = {};
      "Alt+L".action.focus-column-right = {};

      # Navigation (🡐 🡒 🡑 🡓)
      "Alt+Left".action.focus-column-left = {};
      "Alt+Down".action.focus-window-down = {};
      "Alt+Up".action.focus-window-up = {};
      "Alt+Right".action.focus-column-right = {};

      # Move (h j k l)
      "Alt+Shift+H".action.move-column-left = {};
      "Alt+Shift+J".action.move-window-down = {};
      "Alt+Shift+K".action.move-window-up = {};
      "Alt+Shift+L".action.move-column-right = {};

      # Move (🡐 🡒 🡑 🡓)
      "Alt+Shift+Left".action.move-column-left = {};
      "Alt+Shift+Down".action.move-window-down = {};
      "Alt+Shift+Up".action.move-window-up = {};
      "Alt+Shift+Right".action.move-column-right = {};

      # Resize
      "Alt+Equal".action.set-column-width = "+10%";
      "Alt+Minus".action.set-column-width = "-10%";
      "Alt+Shift+Equal".action.set-window-height = "+10%";
      "Alt+Shift+Minus".action.set-window-height = "-10%";
      "Alt+R".action.switch-preset-column-width = {};
      "Alt+Ctrl+R".action.reset-window-height = {};
      "Alt+F".action.maximize-column = {};
      "Alt+Shift+F".action.fullscreen-window = {};
      "Alt+Shift+R".action.switch-preset-window-height = {};

      # Column & floating
      "Alt+C".action.center-column = {};
      "Alt+Shift+V".action.toggle-window-floating = {};
      "Alt+Shift+Tab".action.toggle-column-tabbed-display = {};
      "Alt+BracketLeft".action.consume-or-expel-window-left = {};
      "Alt+BracketRight".action.consume-or-expel-window-right = {};

      # Workspaces
      "Alt+1".action.focus-workspace = 1;
      "Alt+2".action.focus-workspace = 2;
      "Alt+3".action.focus-workspace = 3;
      "Alt+4".action.focus-workspace = 4;
      "Alt+5".action.focus-workspace = 5;
      "Alt+6".action.focus-workspace = 6;
      "Alt+7".action.focus-workspace = 7;
      "Alt+8".action.focus-workspace = 8;
      "Alt+9".action.focus-workspace = 9;
      "Alt+Page_Down".action.focus-workspace-down = {};
      "Alt+Page_Up".action.focus-workspace-up = {};

      # Move to workspace
      "Alt+Shift+1".action.move-window-to-workspace = 1;
      "Alt+Shift+2".action.move-window-to-workspace = 2;
      "Alt+Shift+3".action.move-window-to-workspace = 3;
      "Alt+Shift+4".action.move-window-to-workspace = 4;
      "Alt+Shift+5".action.move-window-to-workspace = 5;
      "Alt+Shift+6".action.move-window-to-workspace = 6;
      "Alt+Shift+7".action.move-window-to-workspace = 7;
      "Alt+Shift+8".action.move-window-to-workspace = 8;
      "Alt+Shift+9".action.move-window-to-workspace = 9;
      "Alt+Shift+Page_Down".action.move-window-to-workspace-down = {};
      "Alt+Shift+Page_Up".action.move-window-to-workspace-up = {};

      # Move workspace
      "Alt+Ctrl+Page_Down".action.move-workspace-down = {};
      "Alt+Ctrl+Page_Up".action.move-workspace-up = {};

      # System
      "Alt+Shift+Escape" = {
        action.toggle-keyboard-shortcuts-inhibit = {};
        allow-inhibiting = false;
      };
      "Alt+Shift+M".action.power-off-monitors = {};

      "Alt+D" = {
        action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "2%+"];
        allow-when-locked = true;
      };
      "Alt+A" = {
        action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "2%-"];
        allow-when-locked = true;
      };
      "Alt+X" = {
        action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle"];
        allow-when-locked = true;
      };
      "XF86AudioMicMute" = {
        action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"];
        allow-when-locked = true;
      };
      "XF86AudioPlay" = {
        action.spawn = ["playerctl" "play-pause"];
        allow-when-locked = true;
      };
      "XF86AudioStop" = {
        action.spawn = ["playerctl" "stop"];
        allow-when-locked = true;
      };
      "XF86AudioPrev" = {
        action.spawn = ["playerctl" "previous"];
        allow-when-locked = true;
      };
      "XF86AudioNext" = {
        action.spawn = ["playerctl" "next"];
        allow-when-locked = true;
      };
      "XF86MonBrightnessUp" = {
        action.spawn = ["brightnessctl" "set" "+5%"];
        allow-when-locked = true;
      };
      "XF86MonBrightnessDown" = {
        action.spawn = ["brightnessctl" "set" "5%-"];
        allow-when-locked = true;
      };

      # Mouse
      "Alt+WheelScrollLeft" = {
        action.focus-column-left = {};
        cooldown-ms = 300;
      };
      "Alt+WheelScrollDown" = {
        action.focus-workspace-down = {};
        cooldown-ms = 150;
      };
      "Alt+WheelScrollUp" = {
        action.focus-workspace-up = {};
        cooldown-ms = 150;
      };
      "Alt+WheelScrollRight" = {
        action.focus-column-right = {};
        cooldown-ms = 300;
      };
      "Alt+Shift+WheelScrollLeft".action.move-column-left = {};
      "Alt+Shift+WheelScrollDown" = {
        action.move-column-to-workspace-down = {};
        cooldown-ms = 150;
      };
      "Alt+Shift+WheelScrollUp" = {
        action.move-column-to-workspace-up = {};
        cooldown-ms = 150;
      };
      "Alt+Shift+WheelScrollRight".action.move-column-right = {};
    };
  };
}

require("modules.monitors")
require("modules.autostart")
require("modules.keybinds")
require("modules.env")
require("modules.deco")
require("modules.workspaces")
require("modules.windowrules")
require("modules.plugins")


----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = -1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
})
hl.config({
  xwayland = {
    force_zero_scaling = true
  }
})
hl.config({
  general = {
    allow_tearing = true
  }
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        
        touchpad = {
            natural_scroll = false,
        },
        force_no_accel = true,
    },
})
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
hl.device({
    name = "opentabletdriver-virtual-artist-tablet",
    output = "DP-1",
})

-- For Noctalia Color templates
require("noctalia").apply_theme()

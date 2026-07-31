--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful
--local suppressMaximizeRule = 
hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})
--float
hl.window_rule({
    name = "修复QQ浮动",
    match = {
        class = "QQ",
    },
    float = true,
    size = {1100, 670}
})
hl.window_rule({
    name = "Steam主页面平铺",
    match = {
        class = "^(steam)$",
        title = "^(steam)$",
    },
    float = false
})
hl.window_rule({
    name = "Steam弹出浮动",
    match = {
        class = "^(steam)$",
        title = "negative:^(Steam)$",
    },
    float = true
})
hl.window_rule({
    name = "kde.haruna",
    match = {
        class = "org.kde.haruna"
    },
    float = true
})
hl.window_rule({
    name = "kde.gwenview",
    match = {
        class = "org.kde.gwenview"
    },
    float = true,
    size = {800,570}
})
hl.window_rule({
    name = "telegram media viewer",
    match = {
        class = "org.telegram.desktop",
        title = ".*Media viewer.*"
    },
    float = true,
    size = {1100,670}
})
hl.window_rule({
    name = "pavucontrol",
    match = {
        class = "org.pulseaudio.pavucontrol",
        title = "音量控制"
    },
    float = true,
    size = {560,430},
    move = {1356,35},
    no_max_size = true
})
--hl.window_rule({
--    name = "helldivers2",
--    match = {
--        class = "steam_app_553850",
--        title = "HELLDIVERS™ 2"
--    },
--    decorate = false,
--    border_size = false,
--    rounding = false
--})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

--tearing
hl.window_rule({
    name = "osu-wine allowing tearing",
    match = {
        class = "osu!.exe",
    },
    immediate = true
})
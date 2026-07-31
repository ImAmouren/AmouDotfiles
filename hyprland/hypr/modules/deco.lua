-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 6,
        gaps_out = 6,

        border_size = 2,

        col = {
            active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = true,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 20,
            render_power = 3,
            color        = 0xee121212,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})


--Custom curves
hl.curve("ease1",{type = "bezier", points = {{0.25,0.1},{0.25,1}}})
hl.curve("overshot",{type = "bezier",points = {{0.13,0.99},{0.29,1.05}}})
hl.curve("easeInOutQuart",{type ="bezier",points = {{0.76,0},{0.24,1}}})
hl.curve("easeOutCubic",{type = "bezier",points = {{0.33,1},{0.68,1}}})
hl.curve("easeInOutQuint", {type = "bezier",points = {{0.83,0},{0.17,1}}})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Default springs
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

-- animations
hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })

hl.animation({ leaf = "windows",       enabled = true,  speed = 4, bezier = "easeOutCubic" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 3,  bezier = "easeOutCubic"})
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 2, bezier = "easeOutCubic"})
hl.animation({ leaf = "windowsMove",   enabled = true,  speed = 2, bezier = "easeOutQuint"})

hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "easeOutCubic" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "easeOutCubic" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "easeOutCubic" })

hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeInOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 3.5,    bezier = "easeInOutQuint", style = "popin" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "easeInOutQuint", style = "popin" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })

hl.animation({ leaf = "workspaces",    enabled = true,  speed = 4.6, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 4.6, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 4, bezier = "overshot", style = "slide" })

hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

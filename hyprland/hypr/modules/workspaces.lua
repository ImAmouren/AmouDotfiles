-- DP-1 -> workspace 1~10
for i = 1, 10 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "DP-1",
        persistent = true,
        default = true,
    })
end

-- HDMI-A-1 -> workspace 11~20
for i = 11, 20 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "HDMI-A-1",
        persistent = true,
    })
end
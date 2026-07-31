
-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function () 
   hl.exec_cmd("noctalia")
   hl.exec_cmd("fcitx5 & otd-daemon")
   hl.exec_cmd("sleep 2 && easyeffects")
   hl.exec_cmd("sleep 8 && v2rayn")
 end)

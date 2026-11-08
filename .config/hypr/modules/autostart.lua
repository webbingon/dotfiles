-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    gl.exec_cmd("/usr/lib/pam_kwallet_init")
    hl.exec_cmd("uwsm app -- kitty --class btop btop")
    hl.exec_cmd("uwsm app -- kitty --class clock-rs clock-rs")
    hl.exec_cmd("uwsm app -- kitty --class cava cava")
end)

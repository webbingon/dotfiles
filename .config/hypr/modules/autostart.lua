-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("/usr/lib/pam_kwallet_init")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("fcitx5-remote -r")
    hl.exec_cmd("fcitx5 -d --replace")
--- hl.exec_cmd(terminal)
--- hl.exec_cmd("nm-applet")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("swaync")
    hl.exec_cmd("steam -silent")
    hl.exec_cmd("/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=com.discordapp.Discord --file-forwarding com.discordapp.Discord")
    --- hl.exec_cmd(browser)
    hl.exec_cmd("kitty --class btop btop")
    hl.exec_cmd("flatpak run org.mozilla.firefox --new-window https://music.apple.com/jp/library/recently-added")
    hl.exec_cmd("kitty --class clock-rs clock-rs")
    hl.exec_cmd("kitty --class cava cava")
end)

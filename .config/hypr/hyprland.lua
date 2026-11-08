package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/hypr/?.lua"

require("modules.monitors")

---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
terminal    = "uwsm app -- kitty"
fileManager = "uwsm app -- dolphin"
menu        = "uwsm app -- hyprlauncher"
browser     = "uwsm app -- flatpak run org.mozilla.firefox"

require("modules.autostart")

require("modules.env")

require("modules.permissions")

require("modules.look")

require("modules.misc")

require("modules.input")

require("modules.keybindings")

require("modules.windows_workspaces")

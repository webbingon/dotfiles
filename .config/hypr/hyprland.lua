package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/hypr/?.lua"

require("modules.monitors")

---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
terminal    = "kitty"
fileManager = "dolphin"
menu        = "hyprlauncher"
browser     = "flatpak run org.mozilla.firefox"

require("modules.autostart")

require("modules.env")

require("modules.permissions")

require("modules.look")

require("modules.misc")

require("modules.input")

require("modules.keybindings")

require("modules.windows_workspaces")

local M = {}


M.ui = {
   theme = "onedark",
}

-- Install plugins
local userPlugins = require "custom.plugins" -- path to table

M.plugins = {
   install = userPlugins,
}

return M

local util = require("pants-modus.util")
local theme = require("pants-modus.theme")
local config = require("pants-modus.config")

local M = {}

---@param opts Config|nil
function M.load(opts)
	if opts then
		require("pants-modus.config").extend(opts)
	end
	util.load(theme.setup())
end

M.setup = config.setup

return M
